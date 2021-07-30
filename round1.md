# Questions techniques DevOps

## 1. Diagnostic

Tu commences un nouveau job et on te fait savoir qu'un service ne fonctionne plus, et que tu est en charge de le réparer, sans tellement plus d'indications. On te fournis des accès SSH au serveur (Linux) hébergeant le service. Tu constates que le serveur héberge un serveur web ainsi qu'une base de données. Quelles sont les 5 premières choses que tu vérifies en premier pour comprendre la panne du service et pourquoi ?

(Il n'y a pas de bonnes ou de mauvaises réponses)


## 2. Requête web

Expliquer ce qu'il se passe entre le moment ou un visiteur entre "https://www.quanta.io" dans la barre d'addresse son navigateur et l'affichage de la page ?

## 4. monitor

Implémenter la fonction monitor en Python ou Ruby au choix en suivant les instructions en commentaires. Une solution dans un autre langage est acceptée également tant qu'elle respecte les contraintes de l'énoncé et une implémentation similaire de la fonction "measure".


```python
# Implémenter la fonction monitor.
# Cette fonction doit afficher à `interval` *régulier* la date suivie du retour de la
# fonction "measure" (utilisez `print("{}: {}".format(datetime.datetime.now(), value))`).
# Elle s'arrête au bout de `cycles` executions.
# Il est interdit de modifier la fonction "measure".
# L'interval ne sera jamais inférieur à 1.
# Indice: le temps d'exécution de la fonction doit être inférieur à (cycles + 1) * interval
def monitor(interval=1.0, cycles=42):
  def measure():
    time.sleep(random.random())
    return random.randint(123, 456)

  # Votre code ici
  pass
```

```ruby
# Implémenter la fonction monitor.
# Cette fonction doit afficher à `interval` *régulier* la date suivie du retour de la
# fonction "measure" (utilisez `puts "#{Time.now.iso8601(6)}: #{value}"`)
# Elle s'arrête au bout de `cycles` executions.
# Il est interdit de modifier la fonction "measure".
# L'interval ne sera jamais inférieur à 1.
# Indice: le temps d'exécution de la fonction doit être inférieur à (cycles + 1) * interval
def monitor interval=1.0, cycles=42
  # Votre code ici
end

# Ne pas modifier
def measure
  sleep(rand)
  rand 123..456
end
```
