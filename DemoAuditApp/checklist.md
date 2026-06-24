# Checklist de Auditoría Estática (IEEE 1028)

## 1. Estándares de Código

- [ ] EC-01 El código compila sin errores ni warnings
- [ ] EC-02 Se siguen convenciones de nombres en C# (PascalCase, camelCase)
- [ ] EC-03 No existen variables sin uso
- [ ] EC-04 No hay código duplicado innecesario
- [ ] EC-05 Uso correcto de llaves {} en estructuras de control

---

## 2. Seguridad Básica

- [ ] SB-01 Toda entrada de usuario está validada
- [ ] SB-02 Existe manejo de excepciones (try/catch)
- [ ] SB-03 No hay credenciales hardcodeadas
- [ ] SB-04 No se usan métodos inseguros como int.Parse sin validación
- [ ] SB-05 No hay vulnerabilidades detectables por analyzers

---

## 3. Mantenibilidad

- [ ] MT-01 Métodos cortos y legibles (< 50 líneas)
- [ ] MT-02 Baja complejidad ciclomática
- [ ] MT-03 Código modularizado en funciones o clases
- [ ] MT-04 Responsabilidad única (SRP)
- [ ] MT-05 Uso de principios básicos SOLID

---

## 4. Documentación

- [ ] DC-01 Comentarios XML en métodos públicos
- [ ] DC-02 README del proyecto actualizado
- [ ] DC-03 Documentación de instalación
- [ ] DC-04 Documentación de arquitectura básica

---

## 5. Buenas Prácticas C#

- [ ] BP-01 Uso correcto de var cuando aplica
- [ ] BP-02 Nullable reference types habilitado
- [ ] BP-03 Uso de TryParse en lugar de Parse
- [ ] BP-04 Uso de ILogger o logging básico
- [ ] BP-05 Sin warnings en compilación

---

## 6. DevOps / CI-CD

- [ ] DV-01 Pipeline CI/CD configurado
- [ ] DV-02 Build automático en cada push
- [ ] DV-03 Auditoría automática en PR
- [ ] DV-04 Fallo del pipeline si hay errores
- [ ] DV-05 Generación de reporte automático

---

## Criterio de evaluación

- 90% o más: Aprobado
- 70% - 89%: Aprobado con observaciones
- Menos de 70%: Rechazado