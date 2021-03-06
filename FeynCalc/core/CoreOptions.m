(* ------------------------------------------------------------------------ *)
(* ------------------------------------------------------------------------ *)

(* :Summary: CoreOptions *)

(* ------------------------------------------------------------------------ *)

BeginPackage["HighEnergyPhysics`FeynCalc`CoreOptions`",{"HighEnergyPhysics`FeynCalc`"}];

Collecting::"usage" =
"Collecting is an option of Contract2, ScalarProductCancel, SquareAmplitude, \
Series2, TID and related functions. Setting it to True will trigger \
some kind of collecting of the result.";

CouplingConstant::"usage" =
"CouplingConstant is an option for several Feynman rule functions and \
for CovariantD and FieldStrength.";

Dimension::"usage" =
"Dimension is an option for DiracMatrix, DiracSlash, FourVector, \
LeviCivita, MetricTensor, SetMandelstam, OneLoop and ScalarProduct. \
The default setting is sometimes 4, sometimes D. \
The setting should always be 4, a symbol (D, n, ...), or \
(D-4), (n-4), ... .";

DimensionalReduction::"usage"= "DimensionalReduction is an option \
for TID and OneLoopSimplify.";

DiracTraceEvaluate::"usage" =
"DiracTraceEvaluate is an option for DiracTrace and TR.
If set to False, DiracTrace remains unevaluated.";

Divideout::"usage" =
"Divideout is an option for OPEInt and OPEInsert.
The setting is divided out at the end.";

EpsContract::"usage"=
"EpsContract is an option of Contract specifying whether Levi-Civita
tensors Eps[...] will be contracted, i.e., products
of two Eps are replaced via the determinant formula.";

EpsDiscard::"usage"=
"EpsDiscard is an option for FeynCalc2FORM and SquareAmplitude.
If set to True all
Levi-Civita tensors are replaced by 0 after contraction.";

EpsilonOrder::"usage" =
"EpsilonOrder is an option of OPEIntegrateDelta and RHI. The setting
determines the order n (Epsilon^n) which should be kept.";

Expanding::"usage" =
"Expanding is an option for DotSimplify, Calc, Contract, DiracSimplify, SUNSimplify, etc.
As option for Contract it specifies whether expansion w.r.t.
LorentzIndex is done BEFORE contraction. \n
If set to False in DiracSimplify or SUNSimplify,
only a limited set of simplifications
(multiplicative linearity etc.) is
performed. For DotSimplity, it determines
whether noncommutative expansion is done.";

Factoring::"usage" = "Factoring is an option for Collect2, Contract,
Tr and more functions. If set to True, the result will be
factored, using Factor2. If set to any function f, this function
will be used.";

ExtraFactor::"usage"=
"ExtraFactor is an option for SquareAmplitude and FermionSpinSum.
The setting ExtraFactor -> fa  multiplies the whole amplitude with the
factor fa before squaring.";

Factorout::"usage" = "Factorout is an option for OPEInt and OPEIntegrate.";

FCIntegrate::"usage"=
"FCIntegrate is an option of certain Feynman integral related functions. \
It determines which integration function is used to evaluate analytic \
integrals. Possible settings include Integrate, NIntegrate,
(DOT[Integratedx@@#2, #1] &).";

FCNIntegrate::"usage"=
"FCNIntegrate is an option of certain Feynman integral related functions \
which may return output containing both integrals that can be evaluated \
and integrals that can only be evaluated numerically. \
It then determines which integration function is used to evaluate numeric \
integrals. Possible settings include NIntegrate, (0*#1)&, \
(DOT[Integratedx@@#2, #1] &).";

FeynmanParameterNames::"usage"=
"FeynmanParameterNames is an option for FeynmanParametrize and \
FeynmanParametrize.";

FinalSubstitutions::"usage" =
"FinalSubstitutions is an option for OneLoop, OneLoopSum,
Write2, FeynCalcExternal and FeynCalcInternal. All substitutions indicated hereby are done at the
end of the calculation.";

Gauge::"usage" =
"Gauge is an option for GluonProgagator. If set to 1 the
't Hooft Feynman gauge is used.";

IncludePair::"usage" =
"IncludePair is an option for FC2RHI, FC2TLI and FeynAmpDenominatorSimplify.
Possible settings are True and False.";

InitialSubstitutions::"usage" =
"InitialSubstitutions is an option for OneLoop and OneLoopSum
and Write2. All substitutions indicated hereby are done at the
end of the calculation.";

IntegralTable::"usage"=
"IntegralTable is an option of OneLoopSimplify, TwoLoopSimplify and
FeynAmpDenominatorSimplify.
It may be set to a list of the form :
{FCIntegral[ ... ] :> bla, ...}.";

IntermediateSubstitutions::"usage" =
"IntermediateSubstitutions is an option for OneLoop and
and SquareAmplitude. All substitutions indicated hereby are done at
an intermediate stage of the calculation.";

IsolateNames::"usage" =
"IsolateNames is an option for Isolate and Collect2.
Its default setting is KK. Instead of a symbol the
setting may also be a list with the names of the abbrevations.";

KK::"usage" =
"KK[i] is the default setting of IsolateNames,
which is the head of abbreviations used by Isolate.
A KK[i] returned by Isolate is given in HoldForm and can be
recovered by ReleaseHold[KK[i]].";

LeviCivitaSign::"usage" =
"LeviCivitaSign is an option for DiracTrace and EpsChisholm. It determines
the sign in the result of a Dirac trace of four gamma matrices and gamma5.";

Loop::"usage"= "Loop is an option indicating the number of (virtual) loops.";

Mandelstam::"usage" =
"Mandelstam is an option for DiracTrace, OneLoop, OneLoopSum, Tr
and TrickMandelstam.  A typical setting is
Mandelstam -> {s, t, u, m1^2 + m2^2 + m3^2 + m4^2},
which stands for  s + t + u = m1^2 + m2^2 + m3^2 +  m4^2.
If other than four-particle processes are calculated the
setting should be: Mandelstam -> {}.";

MemoryAvailable::"usage" =
"MemoryAvailable is an option of MemSet.
It can be set to an integer n,
where n is the available amount of main memory in Mega Byte.
The default setting is $MemoryAvailable.";

PairCollect::"usage" =
"PairCollect is an option for DiracTrace specifying if
the result is collected with respect to Pair's.";

PaVeOrderList::"usage"=
"PaVeOrderList is an option for PaVeOrder and PaVeReduce,
specifying in which order the arguments of D0 are to be permuted.";

QuarkMass::"usage"= "QuarkMass is an option of Amplitude.";

SpinPolarizationSum::"usage"=
"SpinPolarizationSum is an option for SquareAmplitude and
FermionSpinSum. The set (pure) function acts on the usual spin sum.";

SUNNToCACF::"usage"= "SUNNToCACF is an option of SUNSimplify. If set to
True, the Casimir operator eigenvalues CA (=N) and CF (=(N^2-1)/(2 N))
are introduced.";

SUNFToTraces::"usage"=
"SUNFToTraces is superseded by Explicit.";

TraceOfOne::"usage" =
"TraceOfOne is an option for Tr and DiracTrace.
Its setting determines the value of the unit trace.";

WriteOut::"usage" = 
"WriteOut is an option for OneLoop and SquareAmplitude. 
If set to True, the result of
OneLoop will be written to a file called \"name.res\", where name
is the first argument of OneLoop.";

WriteOutPaVe::"usage"=
"WriteOutPaVe is an option for PaVeReduce and OneLoopSum. \
If set to a string, the results of all Passarino-Veltman PaVe's are stored in \
files with names generated from this string and the arguments of PaVe.";

ZeroMomentumInsertion::"usage"= 
"ZeroMomentumInsertion is an option of FeynRule, Twist2GluonOperator and
Twist2QuarkOperator.";

(* ------------------------------------------------------------------------ *)

Begin["`Private`"];

End[]; EndPackage[];
(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)
If[$VeryVerbose > 0,WriteString["stdout", "CoreOptions | \n "]];
Null
