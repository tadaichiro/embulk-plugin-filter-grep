# Embulk filter plugin for data extraction

data extraction

## Configuration

- **columns** column name and grep condition (array)

### Example

```yaml
filters:
  - type: grep
    columns:
      - {name: comment, regexp: 'jruby'}
```