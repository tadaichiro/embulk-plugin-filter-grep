# Embulk filter plugin for data extraction

data extraction

no filter:

```
embulk
embulk jruby
embulk core
```

filter grep: jruby

```
embulk jruby
```

## Configuration

- **columns** column name and grep condition (array)

### Example

```yaml
filters:
  - type: grep
    columns:
      - {name: comment, regexp: 'jruby'}
```