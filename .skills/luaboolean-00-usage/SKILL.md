---
name: luaboolean-00-usage
description: Use luaboolean in LuaLaTeX documents to create TeX booleans from Lua boolean values.
license: MIT
compatibility: opencode
metadata:
  package: luaboolean
  topic: usage
---

# luaboolean: Usage

## When To Use

Use `luaboolean` in LuaLaTeX documents or packages when Lua boolean expressions
must drive `xparse`-style TeX conditionals.

## Required Setup

Compile with LuaLaTeX.

```latex
\usepackage{luaboolean}
```

The package requires LuaTeX and loads its Lua companion through
`code/luaboolean.code.lua`.

## Commands

### `\LuaBool{<lua expression>}`

Converts a Lua boolean expression to `\BooleanTrue` or `\BooleanFalse`.

```latex
\LuaBool{1 < 2}
```

### `\IfLuaBooleanTF{<expr>}{<true>}{<false>}`

Branches on a Lua boolean expression.

```latex
\IfLuaBooleanTF{1 < 2}{true text}{false text}
```

### `\IfLuaBooleanT{<expr>}{<true>}`

Runs only the true branch.

```latex
\IfLuaBooleanT{1 < 2}{true text}
```

### `\IfLuaBooleanF{<expr>}{<false>}`

Runs only the false branch.

```latex
\IfLuaBooleanF{1 > 2}{false text}
```

### `\IfLuaStrEqualTF{<left>}{<right>}{<true>}{<false>}`

Compares two Lua string expressions using Lua equality.

```latex
\IfLuaStrEqualTF{'alpha'}{'alpha'}{same}{different}
```

### `\IfLuaStrEqualT{<left>}{<right>}{<true>}`

True-only string equality branch.

```latex
\IfLuaStrEqualT{'a'}{'a'}{same}
```

### `\IfLuaStrEqualF{<left>}{<right>}{<false>}`

False-only string equality branch.

```latex
\IfLuaStrEqualF{'a'}{'b'}{different}
```

### `\IfBoolFlagTF{<flag>}{<true>}{<false>}`

Branches on an expanded `xparse` boolean flag expression.

```latex
\IfBoolFlagTF{\BooleanTrue}{true text}{false text}
```

### `\IfBoolFlagT{<flag>}{<true>}`

True-only branch for an expanded boolean flag.

```latex
\IfBoolFlagT{\BooleanTrue}{true text}
```

### `\IfBoolFlagF{<flag>}{<false>}`

False-only branch for an expanded boolean flag.

```latex
\IfBoolFlagF{\BooleanFalse}{false text}
```

## Rules

- Use Lua syntax inside Lua expression arguments.
- Quote Lua strings explicitly, for example `'left'` or `"left"`.
- Compile with LuaLaTeX; this package calls `\RequireLuaTeX`.

## Avoid

```latex
\IfLuaStrEqualTF{alpha}{alpha}{same}{different}
```

Prefer Lua string literals:

```latex
\IfLuaStrEqualTF{'alpha'}{'alpha'}{same}{different}
```
