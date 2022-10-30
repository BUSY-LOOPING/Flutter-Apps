To avoid the ```prefer const with constant constructors``` warning add this rule ```prefer_const_constructors : false``` to the ```analysis_options.yaml``` file.
```
linter:
  rules:
    prefer_const_constructors : false
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule
```