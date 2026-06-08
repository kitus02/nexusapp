# ADR-001: Estrategia de branching para NexusApp

**Fecha:** 08/06/2026
**Estado:** Aceptado
**Autor:** Marc

## Contexto

NexusApp es un proyecto en fase inicial con un equipo de 1-3 personas.
Necesitamos una estrategia de branching que permita velocidad de desarrollo
sin sacrificar estabilidad en la rama principal.

## Opciones consideradas

**Opción A: GitFlow**
- Pros: estructura clara, soporte para múltiples versiones en producción
- Contras: overhead excesivo para equipo pequeño, ramas de larga duración

**Opción B: Trunk-Based Development**
- Pros: simplicidad, integración continua real, deploy frecuente
- Contras: requiere cobertura de tests alta, disciplina del equipo

## Decisión

**Trunk-Based Development** con ramas de feature de corta duración (máx. 2 días).

Razón: el equipo es pequeño, tenemos CI/CD desde el inicio, y la velocidad
de iteración es prioritaria en fase de desarrollo activo.

## Consecuencias

- Las ramas de feature no pueden vivir más de 2 días
- Todo merge a main requiere CI verde
- Feature flags para funcionalidad incompleta
- Si el equipo crece >5 personas, reevaluar hacia GitFlow o GitHub Flow
