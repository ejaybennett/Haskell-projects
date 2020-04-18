module compiler where

open import expr
open import lib

eqTp≡ : ∀ {T1 T2} → eqTp T1 T2 ≡ tt → T1 ≡ T2
eqTp≡ = {!!}

tpCheck : RawExpr → maybe (Σ Tp (λ T → Expr T))
tpCheck (Num x) = {!!}
tpCheck (Bool x) = {!!}
{- here is one example case in the style I found easiest to deal with (I suggest
   implementing the cases for Lt and Ite similarly). -}
tpCheck (Add r r') with tpCheck r | tpCheck r' 
tpCheck (Add r r') | just (TpNat , e1) | just (TpNat , e2) = {!!}
tpCheck (Add r r') | _ | _ = nothing
tpCheck (Lt r r') = {!!}
tpCheck (Ite i t e) = {!!}

confirm : tpCheck testRawExpr ≡ just (TpBool , testExpr)
confirm = refl

data AddExpr : Set where
  Num : ℕ → AddExpr
  AddNum : ℕ → AddExpr → AddExpr

data LtExpr : Tp → Set where
  injAddExpr : AddExpr → LtExpr TpNat
  Lt : AddExpr → AddExpr → LtExpr TpBool
  Bool : 𝔹 → LtExpr TpBool

data IteExpr : Tp → Set where
  injLtExpr : ∀{T : Tp} → LtExpr T → IteExpr T
  Ite : ∀{T : Tp} → LtExpr TpBool → IteExpr T → IteExpr T → IteExpr T
