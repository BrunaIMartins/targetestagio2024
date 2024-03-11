#QUESTÃO 1
# Observe o trecho de código abaixo:

#int INDICE = 13, SOMA = 0, K = 0;

#enquanto K < INDICE faça

#{
  
  #K = K + 1;
  
  #SOMA = SOMA + K;
  
#}

#imprimir(SOMA);



#Ao final do processamento, qual será o valor da variável SOMA?
  

INDICE <- 13
SOMA <- 0
K <- 0

while (K < INDICE) 
  {K <- K + 1
  SOMA <- SOMA + K}

print(SOMA)

#QUESTÃO 2

#Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o 
#próximo valor sempre será a soma dos 2 valores anteriores 
#(exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um 
#programa na linguagem que desejar onde, informado um número, 
#ele calcule a sequência de Fibonacci e retorne uma mensagem 
#avisando se o número informado pertence ou não a sequência.

#IMPORTANTE:
  
#Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código;


# Função para verificar se um número está na sequência de Fibonacci
is_in_fibonacci <- function(n) {
  # Inicializa os dois primeiros números da sequência
  a <- 0
  b <- 1
  
  # Caso especial para 0
  if (n == 0) {
    return(TRUE)
  }
  
  # Loop para gerar a sequência até que o próximo número exceda n
  while (b <= n) {
    # Verifica se o número está na sequência
    if (b == n) {
      return(TRUE)
    }
    
    # Calcula o próximo número da sequência
    temp <- a + b
    a <- b
    b <- temp
  }
  
  # Se o número não foi encontrado na sequência
  return(FALSE)
}

# Número a ser verificado
numero <- 21 

# Verifica se o número está na sequência de Fibonacci
if (is_in_fibonacci(numero)) {
  print(numero, "pertence à sequência de Fibonacci.\n")
} else {
  print(numero, "não pertence à sequência de Fibonacci.\n")
}

#QUESTÃO 3
# Descubra a lógica e complete o próximo elemento:

#a) 1, 3, 5, 7, ___

#b) 2, 4, 8, 16, 32, 64, ____

#c) 0, 1, 4, 9, 16, 25, 36, ____

#d) 4, 16, 36, 64, ____

#e) 1, 1, 2, 3, 5, 8, ____

#f) 2,10, 12, 16, 17, 18, 19, ____

# a) Sequência 1, 3, 5, 7, ...
sequencia_a <- function(n) {
  return(2 * n + 1)
}

# b) Sequência 2, 4, 8, 16, 32, 64, ...
sequencia_b <- function(n) {
  return(2^n)
}

# c) Sequência 0, 1, 4, 9, 16, 25, 36, ...
sequencia_c <- function(n) {
  return(n^2)
}

# d) Sequência 4, 16, 36, 64, ...
sequencia_d <- function(n) {
  return((2*n)^2)
}

# e) Sequência 1, 1, 2, 3, 5, 8, ...
sequencia_e <- function(n) {
  if (n == 1 || n == 2) {
    return(1)
  }
  a <- 1
  b <- 1
  for (i in 3:n) {
    temp <- a + b
    a <- b
    b <- temp
  }
  return(b)
}

# f) Sequência 2, 10, 12, 16, 17, 18, 19, ...
sequencia_f <- function(n) {
  return(2 + (n - 1)^2)
}

# Testando as próximas 5 elementos de cada sequência
for (i in 1:5) {
  cat("a) Próximo elemento da sequência a:", sequencia_a(4 + i), "\n")
  cat("b) Próximo elemento da sequência b:", sequencia_b(6 + i), "\n")
  cat("c) Próximo elemento da sequência c:", sequencia_c(7 + i), "\n")
  cat("d) Próximo elemento da sequência d:", sequencia_d(4 + i), "\n")
  cat("e) Próximo elemento da sequência e:", sequencia_e(6 + i), "\n")
  cat("f) Próximo elemento da sequência f:", sequencia_f(7 + i), "\n")
}

#QUESTÃO 4
#Você está em uma sala com três interruptores, cada um conectado 
#a uma lâmpada em uma sala diferente. Você não pode ver as lâmpadas 
#da sala em que está, mas pode ligar e desligar os interruptores 
#quantas vezes quiser. Seu objetivo é descobrir qual interruptor 
#controla qual lâmpada.

#Como você faria para descobrir, usando apenas duas idas até uma 
#das salas das lâmpadas, qual interruptor controla cada lâmpada?

# Função para simular o experimento
descobrir_interruptores <- function() {
  # Inicializa os interruptores e as lâmpadas
  interruptor_1 <- FALSE
  interruptor_2 <- FALSE
  interruptor_3 <- FALSE
  lâmpada_1 <- FALSE
  lâmpada_2 <- FALSE
  lâmpada_3 <- FALSE
  
  # Primeira etapa: liga e desliga o interruptor 1
  interruptor_1 <- !interruptor_1
  
  # Segunda etapa: liga o interruptor 2
  interruptor_2 <- TRUE
  
  # Verifica o estado das lâmpadas
  # Se a lâmpada estiver acesa, o interruptor 2 controla essa lâmpada
  # Se a lâmpada estiver apagada, toca-se para verificar a temperatura
  if (lâmpada_1) {
    cat("O interruptor 2 controla a lâmpada 1.\n")
  } else {
    cat("Toca-se na lâmpada 1 para verificar a temperatura.\n")
    if (lâmpada_1) {
      cat("A lâmpada 1 está quente. O interruptor 1 controla a lâmpada 1.\n")
    } else {
      cat("A lâmpada 1 está fria. O interruptor 3 controla a lâmpada 1.\n")
    }
  }
  
  # Reinicia os interruptores e lâmpadas para o próximo teste
  interruptor_1 <- FALSE
  interruptor_2 <- FALSE
  interruptor_3 <- FALSE
}

# Executa o experimento
descobrir_interruptores()

#QUESTÃO 5
#5) Escreva um programa que inverta os caracteres de um string.

#IMPORTANTE:
  
#a) Essa string pode ser informada através de qualquer entrada 
#de sua preferência ou pode ser previamente definida no código;

#b) Evite usar funções prontas, como, por exemplo, reverse;

# Função para inverter uma string
invert_string <- function(string) {
  reversed <- character(nchar(string)) # Cria um vetor de caracteres vazio com o mesmo tamanho da string
  
  # Loop para inverter os caracteres
  for (i in 1:nchar(string)) {
    reversed[i] <- substr(string, nchar(string) - i + 1, nchar(string) - i + 1)
  }
  
  return(paste(reversed, collapse = "")) # Combina os caracteres invertidos em uma única string
}

# String a ser invertida
minha_string <- "Exemplo"

# Invertendo a string
string_invertida <- invert_string(minha_string)

# Exibindo a string invertida
cat("String invertida:", string_invertida, "\n")

