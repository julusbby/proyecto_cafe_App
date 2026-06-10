# ☕ Café App - Flutter

## 📖 Descripción del Proyecto

Café App es una aplicación móvil desarrollada en Flutter que simula una cafetería digital. Permite a los usuarios iniciar sesión, visualizar diferentes tipos de café, consultar información detallada de cada bebida y realizar acciones rápidas mediante un menú flotante.

El proyecto fue desarrollado aplicando conceptos fundamentales de Flutter como:

* Widgets Stateful y Stateless
* Navegación entre pantallas
* Manejo de estados con setState()
* Componentes reutilizables
* Organización modular de carpetas
* Gestión de recursos e imágenes
* Buenas prácticas de programación

---

# 📁 Estructura del Proyecto

```text
lib/
│
├── main.dart
│
├── constants/
│   └── app_colors.dart
│
├── screens/
│   ├── login_screen.dart
│   └── home_screen.dart
│
├── widgets/
│   └── custom_button.dart
│
└── assets/
    └── images/
```

---

# 📂 Explicación de Carpetas

## 📌 main.dart

Es el punto de entrada de la aplicación.

Responsabilidades:

* Ejecutar la aplicación mediante runApp().
* Cargar el widget principal.
* Inicializar la interfaz.

Ejemplo:

```dart
void main() {
  runApp(const CafeApp());
}
```

---

## 📂 constants/

Contiene valores constantes utilizados en toda la aplicación.

### app_colors.dart

Centraliza los colores de la interfaz.

Ventajas:

* Evita repetir colores.
* Facilita cambios de diseño.
* Mantiene consistencia visual.

Ejemplo:

```dart
class AppColors {
  static const cafeOscuro = Color(0xFF2B1B17);
  static const crema = Color(0xFFD9B382);
}
```

---

## 📂 screens/

Contiene todas las pantallas de la aplicación.

Cada pantalla representa una vista completa para el usuario.

---

### 🔐 login_screen.dart

Pantalla de inicio de sesión.

Funciones:

* Capturar usuario.
* Capturar contraseña.
* Mostrar y ocultar contraseña.
* Validar campos vacíos.
* Navegar a HomeScreen.

Conceptos utilizados:

* TextField
* TextEditingController
* Navigator
* SnackBar
* StatefulWidget

---

### ☕ home_screen.dart

Pantalla principal de la aplicación.

Funciones:

* Mostrar información del café seleccionado.
* Cambiar entre tipos de café.
* Mostrar imágenes dinámicas.
* Agregar favoritos.
* Menú flotante de acciones.
* Mostrar información detallada.

Conceptos utilizados:

* StatefulWidget
* setState()
* FloatingActionButton
* AlertDialog
* SingleChildScrollView

---

## 📂 widgets/

Contiene componentes reutilizables.

---

### 🔘 custom_button.dart

Widget personalizado utilizado para los botones de la aplicación.

Su función es evitar repetir código.

Características:

* Texto dinámico.
* Iconos opcionales.
* Colores configurables.
* Acción personalizada mediante onPressed.

Beneficios:

* Reutilización de código.
* Fácil mantenimiento.
* Diseño consistente.

Ejemplo de uso:

```dart
CustomButton(
  text: "Espresso",
  icon: Icons.coffee,
  onPressed: () {},
)
```

---

## 📂 assets/images/

Contiene todos los recursos gráficos utilizados por la aplicación.

Imágenes utilizadas:

```text
assets/images/
│
├── logo.png
├── Espresso.png
├── Capuccino.png
└── Latte.png
```

Estas imágenes son cargadas mediante:

```dart
Image.asset()
```

---

# 🔄 Navegación de la Aplicación

```text
LoginScreen
      │
      ▼
HomeScreen
```

Proceso:

1. El usuario ingresa credenciales.
2. Se valida la información.
3. Se navega hacia HomeScreen.
4. Se muestra el catálogo de cafés.

---

# ♻️ Reutilización de Componentes

Durante el desarrollo se refactorizó el componente CustomButton.

Inicialmente era utilizado únicamente en la pantalla de Login.

Posteriormente fue adaptado para ser reutilizado en:

* Botón Ingresar.
* Botón Espresso.
* Botón Capuccino.
* Botón Latte.

Esto permitió:

* Reducir código duplicado.
* Mejorar la mantenibilidad.
* Aplicar principios de reutilización de componentes.

---

# 🧹 Gestión de Memoria

Se implementó el método dispose() en LoginScreen.

```dart
@override
void dispose() {
  usuarioController.dispose();
  passwordController.dispose();
  super.dispose();
}
```

Función:

* Liberar recursos utilizados por los TextEditingController.
* Evitar consumo innecesario de memoria.
* Aplicar buenas prácticas de Flutter.

---

# 🛠 Tecnologías Utilizadas

* Flutter
* Dart
* Material Design

---

# 🎯 Funcionalidades Implementadas

✅ Inicio de sesión

✅ Validación de campos

✅ Navegación entre pantallas

✅ Visualización de cafés

✅ Cambio dinámico de información

✅ Sistema de favoritos

✅ Menú flotante de acciones

✅ Diálogos informativos

✅ Componentes reutilizables

✅ Gestión de memoria con dispose()

---

# 👩‍💻 Autora

Juliana

Proyecto desarrollado como práctica académica para el aprendizaje de Flutter y desarrollo de aplicaciones móviles.
