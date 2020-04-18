open import lib

init𝕍 : ∀{A : Set}{n : ℕ} → 𝕍 A (suc n) → 𝕍 A n
init𝕍 = {!!}

last𝕍 : ∀{A : Set}{n : ℕ} → 𝕍 A (suc n) → A
last𝕍 = {!!} 

{- take the first m elements from the given input vector, where you are also
   given a proof that m ≤ n. -}
take𝕍 : ∀{A : Set}{n : ℕ} → (m : ℕ) → m ≤ n ≡ tt → 𝕍 A n → 𝕍 A m
take𝕍 = {!!}

