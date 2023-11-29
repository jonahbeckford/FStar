open Prims
type error_flag =
  | CFatal 
  | CAlwaysError 
  | CError 
  | CWarning 
  | CSilent 
let (uu___is_CFatal : error_flag -> Prims.bool) =
  fun projectee -> match projectee with | CFatal -> true | uu___ -> false
let (uu___is_CAlwaysError : error_flag -> Prims.bool) =
  fun projectee ->
    match projectee with | CAlwaysError -> true | uu___ -> false
let (uu___is_CError : error_flag -> Prims.bool) =
  fun projectee -> match projectee with | CError -> true | uu___ -> false
let (uu___is_CWarning : error_flag -> Prims.bool) =
  fun projectee -> match projectee with | CWarning -> true | uu___ -> false
let (uu___is_CSilent : error_flag -> Prims.bool) =
  fun projectee -> match projectee with | CSilent -> true | uu___ -> false
type raw_error =
  | Error_DependencyAnalysisFailed 
  | Error_IDETooManyPops 
  | Error_IDEUnrecognized 
  | Error_InductiveTypeNotSatisfyPositivityCondition 
  | Error_InvalidUniverseVar 
  | Error_MissingFileName 
  | Error_ModuleFileNameMismatch 
  | Error_OpPlusInUniverse 
  | Error_OutOfRange 
  | Error_ProofObligationFailed 
  | Error_TooManyFiles 
  | Error_TypeCheckerFailToProve 
  | Error_TypeError 
  | Error_UncontrainedUnificationVar 
  | Error_UnexpectedGTotComputation 
  | Error_UnexpectedInstance 
  | Error_UnknownFatal_AssertionFailure 
  | Error_Z3InvocationError 
  | Error_IDEAssertionFailure 
  | Error_Z3SolverError 
  | Fatal_AbstractTypeDeclarationInInterface 
  | Fatal_ActionMustHaveFunctionType 
  | Fatal_AlreadyDefinedTopLevelDeclaration 
  | Fatal_ArgumentLengthMismatch 
  | Fatal_AssertionFailure 
  | Fatal_AssignToImmutableValues 
  | Fatal_AssumeValInInterface 
  | Fatal_BadlyInstantiatedSynthByTactic 
  | Fatal_BadSignatureShape 
  | Fatal_BinderAndArgsLengthMismatch 
  | Fatal_BothValAndLetInInterface 
  | Fatal_CardinalityConstraintViolated 
  | Fatal_ComputationNotTotal 
  | Fatal_ComputationTypeNotAllowed 
  | Fatal_ComputedTypeNotMatchAnnotation 
  | Fatal_ConstructorArgLengthMismatch 
  | Fatal_ConstructorFailedCheck 
  | Fatal_ConstructorNotFound 
  | Fatal_ConstsructorBuildWrongType 
  | Fatal_CycleInRecTypeAbbreviation 
  | Fatal_DataContructorNotFound 
  | Fatal_DefaultQualifierNotAllowedOnEffects 
  | Fatal_DefinitionNotFound 
  | Fatal_DisjuctivePatternVarsMismatch 
  | Fatal_DivergentComputationCannotBeIncludedInTotal 
  | Fatal_DuplicateInImplementation 
  | Fatal_DuplicateModuleOrInterface 
  | Fatal_DuplicateTopLevelNames 
  | Fatal_DuplicateTypeAnnotationAndValDecl 
  | Fatal_EffectCannotBeReified 
  | Fatal_EffectConstructorNotFullyApplied 
  | Fatal_EffectfulAndPureComputationMismatch 
  | Fatal_EffectNotFound 
  | Fatal_EffectsCannotBeComposed 
  | Fatal_ErrorInSolveDeferredConstraints 
  | Fatal_ErrorsReported 
  | Fatal_EscapedBoundVar 
  | Fatal_ExpectedArrowAnnotatedType 
  | Fatal_ExpectedGhostExpression 
  | Fatal_ExpectedPureExpression 
  | Fatal_ExpectNormalizedEffect 
  | Fatal_ExpectTermGotFunction 
  | Fatal_ExpectTrivialPreCondition 
  | Fatal_FailToCompileNativeTactic 
  | Fatal_FailToExtractNativeTactic 
  | Fatal_FailToProcessPragma 
  | Fatal_FailToResolveImplicitArgument 
  | Fatal_FailToSolveUniverseInEquality 
  | Fatal_FieldsNotBelongToSameRecordType 
  | Fatal_ForbiddenReferenceToCurrentModule 
  | Fatal_FreeVariables 
  | Fatal_FunctionTypeExpected 
  | Fatal_IdentifierNotFound 
  | Fatal_IllAppliedConstant 
  | Fatal_IllegalCharInByteArray 
  | Fatal_IllegalCharInOperatorName 
  | Fatal_IllTyped 
  | Fatal_ImpossibleAbbrevLidBundle 
  | Fatal_ImpossibleAbbrevRenameBundle 
  | Fatal_ImpossibleInductiveWithAbbrev 
  | Fatal_ImpossiblePrePostAbs 
  | Fatal_ImpossiblePrePostArrow 
  | Fatal_ImpossibleToGenerateDMEffect 
  | Fatal_ImpossibleTypeAbbrevBundle 
  | Fatal_ImpossibleTypeAbbrevSigeltBundle 
  | Fatal_IncludeModuleNotPrepared 
  | Fatal_IncoherentInlineUniverse 
  | Fatal_IncompatibleKinds 
  | Fatal_IncompatibleNumberOfTypes 
  | Fatal_IncompatibleSetOfUniverse 
  | Fatal_IncompatibleUniverse 
  | Fatal_InconsistentImplicitArgumentAnnotation 
  | Fatal_InconsistentImplicitQualifier 
  | Fatal_InconsistentQualifierAnnotation 
  | Fatal_InferredTypeCauseVarEscape 
  | Fatal_InlineRenamedAsUnfold 
  | Fatal_InsufficientPatternArguments 
  | Fatal_InterfaceAlreadyProcessed 
  | Fatal_InterfaceNotImplementedByModule 
  | Fatal_InterfaceWithTypeImplementation 
  | Fatal_InvalidFloatingPointNumber 
  | Fatal_InvalidFSDocKeyword 
  | Fatal_InvalidIdentifier 
  | Fatal_InvalidLemmaArgument 
  | Fatal_InvalidNumericLiteral 
  | Fatal_InvalidRedefinitionOfLexT 
  | Fatal_InvalidUnicodeInStringLiteral 
  | Fatal_InvalidUTF8Encoding 
  | Fatal_InvalidWarnErrorSetting 
  | Fatal_LetBoundMonadicMismatch 
  | Fatal_LetMutableForVariablesOnly 
  | Fatal_LetOpenModuleOnly 
  | Fatal_LetRecArgumentMismatch 
  | Fatal_MalformedActionDeclaration 
  | Fatal_MismatchedPatternType 
  | Fatal_MismatchUniversePolymorphic 
  | Fatal_MissingDataConstructor 
  | Fatal_MissingExposeInterfacesOption 
  | Fatal_MissingFieldInRecord 
  | Fatal_MissingImplementation 
  | Fatal_MissingImplicitArguments 
  | Fatal_MissingInterface 
  | Fatal_MissingNameInBinder 
  | Fatal_MissingPrimsModule 
  | Fatal_MissingQuantifierBinder 
  | Fatal_ModuleExpected 
  | Fatal_ModuleFileNotFound 
  | Fatal_ModuleFirstStatement 
  | Fatal_ModuleNotFound 
  | Fatal_ModuleOrFileNotFound 
  | Fatal_MonadAlreadyDefined 
  | Fatal_MoreThanOneDeclaration 
  | Fatal_MultipleLetBinding 
  | Fatal_NameNotFound 
  | Fatal_NameSpaceNotFound 
  | Fatal_NegativeUniverseConstFatal_NotSupported 
  | Fatal_NoFileProvided 
  | Fatal_NonInductiveInMutuallyDefinedType 
  | Fatal_NonLinearPatternNotPermitted 
  | Fatal_NonLinearPatternVars 
  | Fatal_NonSingletonTopLevel 
  | Fatal_NonSingletonTopLevelModule 
  | Error_NonTopRecFunctionNotFullyEncoded 
  | Fatal_NonTrivialPreConditionInPrims 
  | Fatal_NonVariableInductiveTypeParameter 
  | Fatal_NotApplicationOrFv 
  | Fatal_NotEnoughArgsToEffect 
  | Fatal_NotEnoughArgumentsForEffect 
  | Fatal_NotFunctionType 
  | Fatal_NotSupported 
  | Fatal_NotTopLevelModule 
  | Fatal_NotValidFStarFile 
  | Fatal_NotValidIncludeDirectory 
  | Fatal_OneModulePerFile 
  | Fatal_OpenGoalsInSynthesis 
  | Fatal_OptionsNotCompatible 
  | Fatal_OutOfOrder 
  | Fatal_ParseErrors 
  | Fatal_ParseItError 
  | Fatal_PolyTypeExpected 
  | Fatal_PossibleInfiniteTyp 
  | Fatal_PreModuleMismatch 
  | Fatal_QulifierListNotPermitted 
  | Fatal_RecursiveFunctionLiteral 
  | Fatal_ReflectOnlySupportedOnEffects 
  | Fatal_ReservedPrefix 
  | Fatal_SMTOutputParseError 
  | Fatal_SMTSolverError 
  | Fatal_SyntaxError 
  | Fatal_SynthByTacticError 
  | Fatal_TacticGotStuck 
  | Fatal_TcOneFragmentFailed 
  | Fatal_TermOutsideOfDefLanguage 
  | Fatal_ToManyArgumentToFunction 
  | Fatal_TooManyOrTooFewFileMatch 
  | Fatal_TooManyPatternArguments 
  | Fatal_TooManyUniverse 
  | Fatal_TypeMismatch 
  | Fatal_TypeWithinPatternsAllowedOnVariablesOnly 
  | Fatal_UnableToReadFile 
  | Fatal_UnepxectedOrUnboundOperator 
  | Fatal_UnexpectedBinder 
  | Fatal_UnexpectedBindShape 
  | Fatal_UnexpectedChar 
  | Fatal_UnexpectedComputationTypeForLetRec 
  | Fatal_UnexpectedConstructorType 
  | Fatal_UnexpectedDataConstructor 
  | Fatal_UnexpectedEffect 
  | Fatal_UnexpectedEmptyRecord 
  | Fatal_UnexpectedExpressionType 
  | Fatal_UnexpectedFunctionParameterType 
  | Fatal_UnexpectedGeneralizedUniverse 
  | Fatal_UnexpectedGTotForLetRec 
  | Fatal_UnexpectedGuard 
  | Fatal_UnexpectedIdentifier 
  | Fatal_UnexpectedImplicitArgument 
  | Fatal_UnexpectedImplictArgument 
  | Fatal_UnexpectedInductivetype 
  | Fatal_UnexpectedLetBinding 
  | Fatal_UnexpectedModuleDeclaration 
  | Fatal_UnexpectedNumberOfUniverse 
  | Fatal_UnexpectedNumericLiteral 
  | Fatal_UnexpectedPattern 
  | Fatal_UnexpectedPosition 
  | Fatal_UnExpectedPreCondition 
  | Fatal_UnexpectedReturnShape 
  | Fatal_UnexpectedSignatureForMonad 
  | Fatal_UnexpectedTerm 
  | Fatal_UnexpectedTermInUniverse 
  | Fatal_UnexpectedTermType 
  | Fatal_UnexpectedTermVQuote 
  | Fatal_UnexpectedUniversePolymorphicReturn 
  | Fatal_UnexpectedUniverseVariable 
  | Fatal_UnfoldableDeprecated 
  | Fatal_UnificationNotWellFormed 
  | Fatal_Uninstantiated 
  | Error_UninstantiatedUnificationVarInTactic 
  | Fatal_UninstantiatedVarInTactic 
  | Fatal_UniverseMightContainSumOfTwoUnivVars 
  | Fatal_UniversePolymorphicInnerLetBound 
  | Fatal_UnknownAttribute 
  | Fatal_UnknownToolForDep 
  | Fatal_UnrecognizedExtension 
  | Fatal_UnresolvedPatternVar 
  | Fatal_UnsupportedConstant 
  | Fatal_UnsupportedDisjuctivePatterns 
  | Fatal_UnsupportedQualifier 
  | Fatal_UserTacticFailure 
  | Fatal_ValueRestriction 
  | Fatal_VariableNotFound 
  | Fatal_WrongBodyTypeForReturnWP 
  | Fatal_WrongDataAppHeadFormat 
  | Fatal_WrongDefinitionOrder 
  | Fatal_WrongResultTypeAfterConstrutor 
  | Fatal_WrongTerm 
  | Fatal_WhenClauseNotSupported 
  | Unused01 
  | Warning_AddImplicitAssumeNewQualifier 
  | Error_AdmitWithoutDefinition 
  | Warning_CachedFile 
  | Warning_DefinitionNotTranslated 
  | Warning_DependencyFound 
  | Warning_DeprecatedEqualityOnBinder 
  | Warning_DeprecatedOpaqueQualifier 
  | Warning_DocOverwrite 
  | Warning_FileNotWritten 
  | Warning_Filtered 
  | Warning_FunctionLiteralPrecisionLoss 
  | Warning_FunctionNotExtacted 
  | Warning_HintFailedToReplayProof 
  | Warning_HitReplayFailed 
  | Warning_IDEIgnoreCodeGen 
  | Warning_IllFormedGoal 
  | Warning_InaccessibleArgument 
  | Warning_IncoherentImplicitQualifier 
  | Warning_IrrelevantQualifierOnArgumentToReflect 
  | Warning_IrrelevantQualifierOnArgumentToReify 
  | Warning_MalformedWarnErrorList 
  | Warning_MetaAlienNotATmUnknown 
  | Warning_MultipleAscriptions 
  | Warning_NondependentUserDefinedDataType 
  | Warning_NonListLiteralSMTPattern 
  | Warning_NormalizationFailure 
  | Warning_NotDependentArrow 
  | Warning_NotEmbedded 
  | Warning_PatternMissingBoundVar 
  | Warning_RecursiveDependency 
  | Warning_RedundantExplicitCurrying 
  | Warning_SMTPatTDeprecated 
  | Warning_SMTPatternIllFormed 
  | Warning_TopLevelEffect 
  | Warning_UnboundModuleReference 
  | Warning_UnexpectedFile 
  | Warning_UnexpectedFsTypApp 
  | Warning_UnexpectedZ3Output 
  | Warning_UnprotectedTerm 
  | Warning_UnrecognizedAttribute 
  | Warning_UpperBoundCandidateAlreadyVisited 
  | Warning_UseDefaultEffect 
  | Warning_WrongErrorLocation 
  | Warning_Z3InvocationWarning 
  | Warning_PluginNotImplemented 
  | Warning_MissingInterfaceOrImplementation 
  | Warning_ConstructorBuildsUnexpectedType 
  | Warning_ModuleOrFileNotFoundWarning 
  | Error_NoLetMutable 
  | Error_BadImplicit 
  | Warning_DeprecatedDefinition 
  | Fatal_SMTEncodingArityMismatch 
  | Warning_Defensive 
  | Warning_CantInspect 
  | Warning_NilGivenExplicitArgs 
  | Warning_ConsAppliedExplicitArgs 
  | Warning_UnembedBinderKnot 
  | Fatal_TacticProofRelevantGoal 
  | Warning_TacAdmit 
  | Fatal_IncoherentPatterns 
  | Error_NoSMTButNeeded 
  | Fatal_UnexpectedAntiquotation 
  | Fatal_SplicedUndef 
  | Fatal_SpliceUnembedFail 
  | Warning_ExtractionUnexpectedEffect 
  | Error_DidNotFail 
  | Warning_UnappliedFail 
  | Warning_QuantifierWithoutPattern 
  | Error_EmptyFailErrs 
  | Warning_logicqualifier 
  | Fatal_CyclicDependence 
  | Error_InductiveAnnotNotAType 
  | Fatal_FriendInterface 
  | Error_CannotRedefineConst 
  | Error_BadClassDecl 
  | Error_BadInductiveParam 
  | Error_FieldShadow 
  | Error_UnexpectedDM4FType 
  | Fatal_EffectAbbreviationResultTypeMismatch 
  | Error_AlreadyCachedAssertionFailure 
  | Error_MustEraseMissing 
  | Warning_EffectfulArgumentToErasedFunction 
  | Fatal_EmptySurfaceLet 
  | Warning_UnexpectedCheckedFile 
  | Fatal_ExtractionUnsupported 
  | Warning_SMTErrorReason 
  | Warning_CoercionNotFound 
  | Error_QuakeFailed 
  | Error_IllSMTPat 
  | Error_IllScopedTerm 
  | Warning_UnusedLetRec 
  | Fatal_Effects_Ordering_Coherence 
  | Warning_BleedingEdge_Feature 
  | Warning_IgnoredBinding 
  | Warning_CouldNotReadHints 
  | Fatal_BadUvar 
  | Warning_WarnOnUse 
  | Warning_DeprecatedAttributeSyntax 
  | Warning_DeprecatedGeneric 
  | Error_BadSplice 
  | Error_UnexpectedUnresolvedUvar 
  | Warning_UnfoldPlugin 
  | Error_LayeredMissingAnnot 
  | Error_CallToErased 
  | Error_ErasedCtor 
  | Error_RemoveUnusedTypeParameter 
  | Warning_NoMagicInFSharp 
  | Error_BadLetOpenRecord 
  | Error_UnexpectedTypeclassInstance 
  | Warning_AmbiguousResolveImplicitsHook 
  | Warning_SplitAndRetryQueries 
  | Warning_DeprecatedLightDoNotation 
  | Warning_FailedToCheckInitialTacticGoal 
  | Warning_Adhoc_IndexedEffect_Combinator 
  | Error_PluginDynlink 
  | Error_InternalQualifier 
  | Warning_NameEscape 
  | Warning_UnexpectedZ3Stderr 
  | Warning_SolverMismatch 
  | Warning_SolverVersionMismatch 
  | Warning_ProofRecovery 
let (uu___is_Error_DependencyAnalysisFailed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_DependencyAnalysisFailed -> true
    | uu___ -> false
let (uu___is_Error_IDETooManyPops : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_IDETooManyPops -> true | uu___ -> false
let (uu___is_Error_IDEUnrecognized : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_IDEUnrecognized -> true | uu___ -> false
let (uu___is_Error_InductiveTypeNotSatisfyPositivityCondition :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_InductiveTypeNotSatisfyPositivityCondition -> true
    | uu___ -> false
let (uu___is_Error_InvalidUniverseVar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_InvalidUniverseVar -> true | uu___ -> false
let (uu___is_Error_MissingFileName : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_MissingFileName -> true | uu___ -> false
let (uu___is_Error_ModuleFileNameMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_ModuleFileNameMismatch -> true
    | uu___ -> false
let (uu___is_Error_OpPlusInUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_OpPlusInUniverse -> true | uu___ -> false
let (uu___is_Error_OutOfRange : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_OutOfRange -> true | uu___ -> false
let (uu___is_Error_ProofObligationFailed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_ProofObligationFailed -> true
    | uu___ -> false
let (uu___is_Error_TooManyFiles : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_TooManyFiles -> true | uu___ -> false
let (uu___is_Error_TypeCheckerFailToProve : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_TypeCheckerFailToProve -> true
    | uu___ -> false
let (uu___is_Error_TypeError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_TypeError -> true | uu___ -> false
let (uu___is_Error_UncontrainedUnificationVar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UncontrainedUnificationVar -> true
    | uu___ -> false
let (uu___is_Error_UnexpectedGTotComputation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UnexpectedGTotComputation -> true
    | uu___ -> false
let (uu___is_Error_UnexpectedInstance : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_UnexpectedInstance -> true | uu___ -> false
let (uu___is_Error_UnknownFatal_AssertionFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UnknownFatal_AssertionFailure -> true
    | uu___ -> false
let (uu___is_Error_Z3InvocationError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_Z3InvocationError -> true | uu___ -> false
let (uu___is_Error_IDEAssertionFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_IDEAssertionFailure -> true | uu___ -> false
let (uu___is_Error_Z3SolverError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_Z3SolverError -> true | uu___ -> false
let (uu___is_Fatal_AbstractTypeDeclarationInInterface :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_AbstractTypeDeclarationInInterface -> true
    | uu___ -> false
let (uu___is_Fatal_ActionMustHaveFunctionType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ActionMustHaveFunctionType -> true
    | uu___ -> false
let (uu___is_Fatal_AlreadyDefinedTopLevelDeclaration :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_AlreadyDefinedTopLevelDeclaration -> true
    | uu___ -> false
let (uu___is_Fatal_ArgumentLengthMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ArgumentLengthMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_AssertionFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_AssertionFailure -> true | uu___ -> false
let (uu___is_Fatal_AssignToImmutableValues : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_AssignToImmutableValues -> true
    | uu___ -> false
let (uu___is_Fatal_AssumeValInInterface : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_AssumeValInInterface -> true
    | uu___ -> false
let (uu___is_Fatal_BadlyInstantiatedSynthByTactic : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_BadlyInstantiatedSynthByTactic -> true
    | uu___ -> false
let (uu___is_Fatal_BadSignatureShape : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_BadSignatureShape -> true | uu___ -> false
let (uu___is_Fatal_BinderAndArgsLengthMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_BinderAndArgsLengthMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_BothValAndLetInInterface : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_BothValAndLetInInterface -> true
    | uu___ -> false
let (uu___is_Fatal_CardinalityConstraintViolated : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_CardinalityConstraintViolated -> true
    | uu___ -> false
let (uu___is_Fatal_ComputationNotTotal : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ComputationNotTotal -> true | uu___ -> false
let (uu___is_Fatal_ComputationTypeNotAllowed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ComputationTypeNotAllowed -> true
    | uu___ -> false
let (uu___is_Fatal_ComputedTypeNotMatchAnnotation : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_ComputedTypeNotMatchAnnotation -> true
    | uu___ -> false
let (uu___is_Fatal_ConstructorArgLengthMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ConstructorArgLengthMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_ConstructorFailedCheck : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ConstructorFailedCheck -> true
    | uu___ -> false
let (uu___is_Fatal_ConstructorNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ConstructorNotFound -> true | uu___ -> false
let (uu___is_Fatal_ConstsructorBuildWrongType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ConstsructorBuildWrongType -> true
    | uu___ -> false
let (uu___is_Fatal_CycleInRecTypeAbbreviation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_CycleInRecTypeAbbreviation -> true
    | uu___ -> false
let (uu___is_Fatal_DataContructorNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DataContructorNotFound -> true
    | uu___ -> false
let (uu___is_Fatal_DefaultQualifierNotAllowedOnEffects :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DefaultQualifierNotAllowedOnEffects -> true
    | uu___ -> false
let (uu___is_Fatal_DefinitionNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_DefinitionNotFound -> true | uu___ -> false
let (uu___is_Fatal_DisjuctivePatternVarsMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DisjuctivePatternVarsMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_DivergentComputationCannotBeIncludedInTotal :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DivergentComputationCannotBeIncludedInTotal -> true
    | uu___ -> false
let (uu___is_Fatal_DuplicateInImplementation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DuplicateInImplementation -> true
    | uu___ -> false
let (uu___is_Fatal_DuplicateModuleOrInterface : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DuplicateModuleOrInterface -> true
    | uu___ -> false
let (uu___is_Fatal_DuplicateTopLevelNames : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DuplicateTopLevelNames -> true
    | uu___ -> false
let (uu___is_Fatal_DuplicateTypeAnnotationAndValDecl :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_DuplicateTypeAnnotationAndValDecl -> true
    | uu___ -> false
let (uu___is_Fatal_EffectCannotBeReified : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_EffectCannotBeReified -> true
    | uu___ -> false
let (uu___is_Fatal_EffectConstructorNotFullyApplied :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_EffectConstructorNotFullyApplied -> true
    | uu___ -> false
let (uu___is_Fatal_EffectfulAndPureComputationMismatch :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_EffectfulAndPureComputationMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_EffectNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_EffectNotFound -> true | uu___ -> false
let (uu___is_Fatal_EffectsCannotBeComposed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_EffectsCannotBeComposed -> true
    | uu___ -> false
let (uu___is_Fatal_ErrorInSolveDeferredConstraints : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_ErrorInSolveDeferredConstraints -> true
    | uu___ -> false
let (uu___is_Fatal_ErrorsReported : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ErrorsReported -> true | uu___ -> false
let (uu___is_Fatal_EscapedBoundVar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_EscapedBoundVar -> true | uu___ -> false
let (uu___is_Fatal_ExpectedArrowAnnotatedType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectedArrowAnnotatedType -> true
    | uu___ -> false
let (uu___is_Fatal_ExpectedGhostExpression : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectedGhostExpression -> true
    | uu___ -> false
let (uu___is_Fatal_ExpectedPureExpression : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectedPureExpression -> true
    | uu___ -> false
let (uu___is_Fatal_ExpectNormalizedEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectNormalizedEffect -> true
    | uu___ -> false
let (uu___is_Fatal_ExpectTermGotFunction : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectTermGotFunction -> true
    | uu___ -> false
let (uu___is_Fatal_ExpectTrivialPreCondition : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExpectTrivialPreCondition -> true
    | uu___ -> false
let (uu___is_Fatal_FailToCompileNativeTactic : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_FailToCompileNativeTactic -> true
    | uu___ -> false
let (uu___is_Fatal_FailToExtractNativeTactic : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_FailToExtractNativeTactic -> true
    | uu___ -> false
let (uu___is_Fatal_FailToProcessPragma : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_FailToProcessPragma -> true | uu___ -> false
let (uu___is_Fatal_FailToResolveImplicitArgument : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_FailToResolveImplicitArgument -> true
    | uu___ -> false
let (uu___is_Fatal_FailToSolveUniverseInEquality : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_FailToSolveUniverseInEquality -> true
    | uu___ -> false
let (uu___is_Fatal_FieldsNotBelongToSameRecordType : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_FieldsNotBelongToSameRecordType -> true
    | uu___ -> false
let (uu___is_Fatal_ForbiddenReferenceToCurrentModule :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ForbiddenReferenceToCurrentModule -> true
    | uu___ -> false
let (uu___is_Fatal_FreeVariables : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_FreeVariables -> true | uu___ -> false
let (uu___is_Fatal_FunctionTypeExpected : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_FunctionTypeExpected -> true
    | uu___ -> false
let (uu___is_Fatal_IdentifierNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_IdentifierNotFound -> true | uu___ -> false
let (uu___is_Fatal_IllAppliedConstant : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_IllAppliedConstant -> true | uu___ -> false
let (uu___is_Fatal_IllegalCharInByteArray : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IllegalCharInByteArray -> true
    | uu___ -> false
let (uu___is_Fatal_IllegalCharInOperatorName : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IllegalCharInOperatorName -> true
    | uu___ -> false
let (uu___is_Fatal_IllTyped : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_IllTyped -> true | uu___ -> false
let (uu___is_Fatal_ImpossibleAbbrevLidBundle : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleAbbrevLidBundle -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossibleAbbrevRenameBundle : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleAbbrevRenameBundle -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossibleInductiveWithAbbrev : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleInductiveWithAbbrev -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossiblePrePostAbs : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossiblePrePostAbs -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossiblePrePostArrow : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossiblePrePostArrow -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossibleToGenerateDMEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleToGenerateDMEffect -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossibleTypeAbbrevBundle : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleTypeAbbrevBundle -> true
    | uu___ -> false
let (uu___is_Fatal_ImpossibleTypeAbbrevSigeltBundle :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ImpossibleTypeAbbrevSigeltBundle -> true
    | uu___ -> false
let (uu___is_Fatal_IncludeModuleNotPrepared : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IncludeModuleNotPrepared -> true
    | uu___ -> false
let (uu___is_Fatal_IncoherentInlineUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IncoherentInlineUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_IncompatibleKinds : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_IncompatibleKinds -> true | uu___ -> false
let (uu___is_Fatal_IncompatibleNumberOfTypes : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IncompatibleNumberOfTypes -> true
    | uu___ -> false
let (uu___is_Fatal_IncompatibleSetOfUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IncompatibleSetOfUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_IncompatibleUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_IncompatibleUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_InconsistentImplicitArgumentAnnotation :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InconsistentImplicitArgumentAnnotation -> true
    | uu___ -> false
let (uu___is_Fatal_InconsistentImplicitQualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InconsistentImplicitQualifier -> true
    | uu___ -> false
let (uu___is_Fatal_InconsistentQualifierAnnotation : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_InconsistentQualifierAnnotation -> true
    | uu___ -> false
let (uu___is_Fatal_InferredTypeCauseVarEscape : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InferredTypeCauseVarEscape -> true
    | uu___ -> false
let (uu___is_Fatal_InlineRenamedAsUnfold : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InlineRenamedAsUnfold -> true
    | uu___ -> false
let (uu___is_Fatal_InsufficientPatternArguments : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InsufficientPatternArguments -> true
    | uu___ -> false
let (uu___is_Fatal_InterfaceAlreadyProcessed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InterfaceAlreadyProcessed -> true
    | uu___ -> false
let (uu___is_Fatal_InterfaceNotImplementedByModule : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_InterfaceNotImplementedByModule -> true
    | uu___ -> false
let (uu___is_Fatal_InterfaceWithTypeImplementation : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_InterfaceWithTypeImplementation -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidFloatingPointNumber : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidFloatingPointNumber -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidFSDocKeyword : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_InvalidFSDocKeyword -> true | uu___ -> false
let (uu___is_Fatal_InvalidIdentifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_InvalidIdentifier -> true | uu___ -> false
let (uu___is_Fatal_InvalidLemmaArgument : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidLemmaArgument -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidNumericLiteral : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidNumericLiteral -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidRedefinitionOfLexT : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidRedefinitionOfLexT -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidUnicodeInStringLiteral : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidUnicodeInStringLiteral -> true
    | uu___ -> false
let (uu___is_Fatal_InvalidUTF8Encoding : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_InvalidUTF8Encoding -> true | uu___ -> false
let (uu___is_Fatal_InvalidWarnErrorSetting : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_InvalidWarnErrorSetting -> true
    | uu___ -> false
let (uu___is_Fatal_LetBoundMonadicMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_LetBoundMonadicMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_LetMutableForVariablesOnly : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_LetMutableForVariablesOnly -> true
    | uu___ -> false
let (uu___is_Fatal_LetOpenModuleOnly : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_LetOpenModuleOnly -> true | uu___ -> false
let (uu___is_Fatal_LetRecArgumentMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_LetRecArgumentMismatch -> true
    | uu___ -> false
let (uu___is_Fatal_MalformedActionDeclaration : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MalformedActionDeclaration -> true
    | uu___ -> false
let (uu___is_Fatal_MismatchedPatternType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MismatchedPatternType -> true
    | uu___ -> false
let (uu___is_Fatal_MismatchUniversePolymorphic : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MismatchUniversePolymorphic -> true
    | uu___ -> false
let (uu___is_Fatal_MissingDataConstructor : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingDataConstructor -> true
    | uu___ -> false
let (uu___is_Fatal_MissingExposeInterfacesOption : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingExposeInterfacesOption -> true
    | uu___ -> false
let (uu___is_Fatal_MissingFieldInRecord : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingFieldInRecord -> true
    | uu___ -> false
let (uu___is_Fatal_MissingImplementation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingImplementation -> true
    | uu___ -> false
let (uu___is_Fatal_MissingImplicitArguments : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingImplicitArguments -> true
    | uu___ -> false
let (uu___is_Fatal_MissingInterface : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_MissingInterface -> true | uu___ -> false
let (uu___is_Fatal_MissingNameInBinder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_MissingNameInBinder -> true | uu___ -> false
let (uu___is_Fatal_MissingPrimsModule : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_MissingPrimsModule -> true | uu___ -> false
let (uu___is_Fatal_MissingQuantifierBinder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MissingQuantifierBinder -> true
    | uu___ -> false
let (uu___is_Fatal_ModuleExpected : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ModuleExpected -> true | uu___ -> false
let (uu___is_Fatal_ModuleFileNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ModuleFileNotFound -> true | uu___ -> false
let (uu___is_Fatal_ModuleFirstStatement : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ModuleFirstStatement -> true
    | uu___ -> false
let (uu___is_Fatal_ModuleNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ModuleNotFound -> true | uu___ -> false
let (uu___is_Fatal_ModuleOrFileNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ModuleOrFileNotFound -> true
    | uu___ -> false
let (uu___is_Fatal_MonadAlreadyDefined : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_MonadAlreadyDefined -> true | uu___ -> false
let (uu___is_Fatal_MoreThanOneDeclaration : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_MoreThanOneDeclaration -> true
    | uu___ -> false
let (uu___is_Fatal_MultipleLetBinding : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_MultipleLetBinding -> true | uu___ -> false
let (uu___is_Fatal_NameNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NameNotFound -> true | uu___ -> false
let (uu___is_Fatal_NameSpaceNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NameSpaceNotFound -> true | uu___ -> false
let (uu___is_Fatal_NegativeUniverseConstFatal_NotSupported :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NegativeUniverseConstFatal_NotSupported -> true
    | uu___ -> false
let (uu___is_Fatal_NoFileProvided : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NoFileProvided -> true | uu___ -> false
let (uu___is_Fatal_NonInductiveInMutuallyDefinedType :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonInductiveInMutuallyDefinedType -> true
    | uu___ -> false
let (uu___is_Fatal_NonLinearPatternNotPermitted : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonLinearPatternNotPermitted -> true
    | uu___ -> false
let (uu___is_Fatal_NonLinearPatternVars : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonLinearPatternVars -> true
    | uu___ -> false
let (uu___is_Fatal_NonSingletonTopLevel : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonSingletonTopLevel -> true
    | uu___ -> false
let (uu___is_Fatal_NonSingletonTopLevelModule : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonSingletonTopLevelModule -> true
    | uu___ -> false
let (uu___is_Error_NonTopRecFunctionNotFullyEncoded :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_NonTopRecFunctionNotFullyEncoded -> true
    | uu___ -> false
let (uu___is_Fatal_NonTrivialPreConditionInPrims : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonTrivialPreConditionInPrims -> true
    | uu___ -> false
let (uu___is_Fatal_NonVariableInductiveTypeParameter :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NonVariableInductiveTypeParameter -> true
    | uu___ -> false
let (uu___is_Fatal_NotApplicationOrFv : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NotApplicationOrFv -> true | uu___ -> false
let (uu___is_Fatal_NotEnoughArgsToEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NotEnoughArgsToEffect -> true
    | uu___ -> false
let (uu___is_Fatal_NotEnoughArgumentsForEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NotEnoughArgumentsForEffect -> true
    | uu___ -> false
let (uu___is_Fatal_NotFunctionType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NotFunctionType -> true | uu___ -> false
let (uu___is_Fatal_NotSupported : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NotSupported -> true | uu___ -> false
let (uu___is_Fatal_NotTopLevelModule : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NotTopLevelModule -> true | uu___ -> false
let (uu___is_Fatal_NotValidFStarFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_NotValidFStarFile -> true | uu___ -> false
let (uu___is_Fatal_NotValidIncludeDirectory : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_NotValidIncludeDirectory -> true
    | uu___ -> false
let (uu___is_Fatal_OneModulePerFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_OneModulePerFile -> true | uu___ -> false
let (uu___is_Fatal_OpenGoalsInSynthesis : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_OpenGoalsInSynthesis -> true
    | uu___ -> false
let (uu___is_Fatal_OptionsNotCompatible : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_OptionsNotCompatible -> true
    | uu___ -> false
let (uu___is_Fatal_OutOfOrder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_OutOfOrder -> true | uu___ -> false
let (uu___is_Fatal_ParseErrors : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ParseErrors -> true | uu___ -> false
let (uu___is_Fatal_ParseItError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ParseItError -> true | uu___ -> false
let (uu___is_Fatal_PolyTypeExpected : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_PolyTypeExpected -> true | uu___ -> false
let (uu___is_Fatal_PossibleInfiniteTyp : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_PossibleInfiniteTyp -> true | uu___ -> false
let (uu___is_Fatal_PreModuleMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_PreModuleMismatch -> true | uu___ -> false
let (uu___is_Fatal_QulifierListNotPermitted : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_QulifierListNotPermitted -> true
    | uu___ -> false
let (uu___is_Fatal_RecursiveFunctionLiteral : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_RecursiveFunctionLiteral -> true
    | uu___ -> false
let (uu___is_Fatal_ReflectOnlySupportedOnEffects : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ReflectOnlySupportedOnEffects -> true
    | uu___ -> false
let (uu___is_Fatal_ReservedPrefix : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ReservedPrefix -> true | uu___ -> false
let (uu___is_Fatal_SMTOutputParseError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SMTOutputParseError -> true | uu___ -> false
let (uu___is_Fatal_SMTSolverError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SMTSolverError -> true | uu___ -> false
let (uu___is_Fatal_SyntaxError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SyntaxError -> true | uu___ -> false
let (uu___is_Fatal_SynthByTacticError : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SynthByTacticError -> true | uu___ -> false
let (uu___is_Fatal_TacticGotStuck : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_TacticGotStuck -> true | uu___ -> false
let (uu___is_Fatal_TcOneFragmentFailed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_TcOneFragmentFailed -> true | uu___ -> false
let (uu___is_Fatal_TermOutsideOfDefLanguage : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_TermOutsideOfDefLanguage -> true
    | uu___ -> false
let (uu___is_Fatal_ToManyArgumentToFunction : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ToManyArgumentToFunction -> true
    | uu___ -> false
let (uu___is_Fatal_TooManyOrTooFewFileMatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_TooManyOrTooFewFileMatch -> true
    | uu___ -> false
let (uu___is_Fatal_TooManyPatternArguments : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_TooManyPatternArguments -> true
    | uu___ -> false
let (uu___is_Fatal_TooManyUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_TooManyUniverse -> true | uu___ -> false
let (uu___is_Fatal_TypeMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_TypeMismatch -> true | uu___ -> false
let (uu___is_Fatal_TypeWithinPatternsAllowedOnVariablesOnly :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_TypeWithinPatternsAllowedOnVariablesOnly -> true
    | uu___ -> false
let (uu___is_Fatal_UnableToReadFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnableToReadFile -> true | uu___ -> false
let (uu___is_Fatal_UnepxectedOrUnboundOperator : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnepxectedOrUnboundOperator -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedBinder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedBinder -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedBindShape : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedBindShape -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedChar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedChar -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedComputationTypeForLetRec :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedComputationTypeForLetRec -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedConstructorType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedConstructorType -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedDataConstructor : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedDataConstructor -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedEffect -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedEmptyRecord : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedEmptyRecord -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedExpressionType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedExpressionType -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedFunctionParameterType : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedFunctionParameterType -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedGeneralizedUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedGeneralizedUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedGTotForLetRec : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedGTotForLetRec -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedGuard : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedGuard -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedIdentifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedIdentifier -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedImplicitArgument : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedImplicitArgument -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedImplictArgument : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedImplictArgument -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedInductivetype : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedInductivetype -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedLetBinding : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedLetBinding -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedModuleDeclaration : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedModuleDeclaration -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedNumberOfUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedNumberOfUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedNumericLiteral : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedNumericLiteral -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedPattern : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedPattern -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedPosition : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedPosition -> true | uu___ -> false
let (uu___is_Fatal_UnExpectedPreCondition : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnExpectedPreCondition -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedReturnShape : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedReturnShape -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedSignatureForMonad : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedSignatureForMonad -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedTerm : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedTerm -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedTermInUniverse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedTermInUniverse -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedTermType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnexpectedTermType -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedTermVQuote : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedTermVQuote -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedUniversePolymorphicReturn :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedUniversePolymorphicReturn -> true
    | uu___ -> false
let (uu___is_Fatal_UnexpectedUniverseVariable : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedUniverseVariable -> true
    | uu___ -> false
let (uu___is_Fatal_UnfoldableDeprecated : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnfoldableDeprecated -> true
    | uu___ -> false
let (uu___is_Fatal_UnificationNotWellFormed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnificationNotWellFormed -> true
    | uu___ -> false
let (uu___is_Fatal_Uninstantiated : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_Uninstantiated -> true | uu___ -> false
let (uu___is_Error_UninstantiatedUnificationVarInTactic :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UninstantiatedUnificationVarInTactic -> true
    | uu___ -> false
let (uu___is_Fatal_UninstantiatedVarInTactic : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UninstantiatedVarInTactic -> true
    | uu___ -> false
let (uu___is_Fatal_UniverseMightContainSumOfTwoUnivVars :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UniverseMightContainSumOfTwoUnivVars -> true
    | uu___ -> false
let (uu___is_Fatal_UniversePolymorphicInnerLetBound :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UniversePolymorphicInnerLetBound -> true
    | uu___ -> false
let (uu___is_Fatal_UnknownAttribute : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnknownAttribute -> true | uu___ -> false
let (uu___is_Fatal_UnknownToolForDep : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnknownToolForDep -> true | uu___ -> false
let (uu___is_Fatal_UnrecognizedExtension : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnrecognizedExtension -> true
    | uu___ -> false
let (uu___is_Fatal_UnresolvedPatternVar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnresolvedPatternVar -> true
    | uu___ -> false
let (uu___is_Fatal_UnsupportedConstant : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UnsupportedConstant -> true | uu___ -> false
let (uu___is_Fatal_UnsupportedDisjuctivePatterns : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnsupportedDisjuctivePatterns -> true
    | uu___ -> false
let (uu___is_Fatal_UnsupportedQualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnsupportedQualifier -> true
    | uu___ -> false
let (uu___is_Fatal_UserTacticFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_UserTacticFailure -> true | uu___ -> false
let (uu___is_Fatal_ValueRestriction : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_ValueRestriction -> true | uu___ -> false
let (uu___is_Fatal_VariableNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_VariableNotFound -> true | uu___ -> false
let (uu___is_Fatal_WrongBodyTypeForReturnWP : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_WrongBodyTypeForReturnWP -> true
    | uu___ -> false
let (uu___is_Fatal_WrongDataAppHeadFormat : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_WrongDataAppHeadFormat -> true
    | uu___ -> false
let (uu___is_Fatal_WrongDefinitionOrder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_WrongDefinitionOrder -> true
    | uu___ -> false
let (uu___is_Fatal_WrongResultTypeAfterConstrutor : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Fatal_WrongResultTypeAfterConstrutor -> true
    | uu___ -> false
let (uu___is_Fatal_WrongTerm : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_WrongTerm -> true | uu___ -> false
let (uu___is_Fatal_WhenClauseNotSupported : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_WhenClauseNotSupported -> true
    | uu___ -> false
let (uu___is_Unused01 : raw_error -> Prims.bool) =
  fun projectee -> match projectee with | Unused01 -> true | uu___ -> false
let (uu___is_Warning_AddImplicitAssumeNewQualifier : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Warning_AddImplicitAssumeNewQualifier -> true
    | uu___ -> false
let (uu___is_Error_AdmitWithoutDefinition : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_AdmitWithoutDefinition -> true
    | uu___ -> false
let (uu___is_Warning_CachedFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_CachedFile -> true | uu___ -> false
let (uu___is_Warning_DefinitionNotTranslated : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DefinitionNotTranslated -> true
    | uu___ -> false
let (uu___is_Warning_DependencyFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_DependencyFound -> true | uu___ -> false
let (uu___is_Warning_DeprecatedEqualityOnBinder : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DeprecatedEqualityOnBinder -> true
    | uu___ -> false
let (uu___is_Warning_DeprecatedOpaqueQualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DeprecatedOpaqueQualifier -> true
    | uu___ -> false
let (uu___is_Warning_DocOverwrite : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_DocOverwrite -> true | uu___ -> false
let (uu___is_Warning_FileNotWritten : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_FileNotWritten -> true | uu___ -> false
let (uu___is_Warning_Filtered : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_Filtered -> true | uu___ -> false
let (uu___is_Warning_FunctionLiteralPrecisionLoss : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Warning_FunctionLiteralPrecisionLoss -> true
    | uu___ -> false
let (uu___is_Warning_FunctionNotExtacted : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_FunctionNotExtacted -> true
    | uu___ -> false
let (uu___is_Warning_HintFailedToReplayProof : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_HintFailedToReplayProof -> true
    | uu___ -> false
let (uu___is_Warning_HitReplayFailed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_HitReplayFailed -> true | uu___ -> false
let (uu___is_Warning_IDEIgnoreCodeGen : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_IDEIgnoreCodeGen -> true | uu___ -> false
let (uu___is_Warning_IllFormedGoal : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_IllFormedGoal -> true | uu___ -> false
let (uu___is_Warning_InaccessibleArgument : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_InaccessibleArgument -> true
    | uu___ -> false
let (uu___is_Warning_IncoherentImplicitQualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_IncoherentImplicitQualifier -> true
    | uu___ -> false
let (uu___is_Warning_IrrelevantQualifierOnArgumentToReflect :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_IrrelevantQualifierOnArgumentToReflect -> true
    | uu___ -> false
let (uu___is_Warning_IrrelevantQualifierOnArgumentToReify :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_IrrelevantQualifierOnArgumentToReify -> true
    | uu___ -> false
let (uu___is_Warning_MalformedWarnErrorList : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_MalformedWarnErrorList -> true
    | uu___ -> false
let (uu___is_Warning_MetaAlienNotATmUnknown : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_MetaAlienNotATmUnknown -> true
    | uu___ -> false
let (uu___is_Warning_MultipleAscriptions : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_MultipleAscriptions -> true
    | uu___ -> false
let (uu___is_Warning_NondependentUserDefinedDataType :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_NondependentUserDefinedDataType -> true
    | uu___ -> false
let (uu___is_Warning_NonListLiteralSMTPattern : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_NonListLiteralSMTPattern -> true
    | uu___ -> false
let (uu___is_Warning_NormalizationFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_NormalizationFailure -> true
    | uu___ -> false
let (uu___is_Warning_NotDependentArrow : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_NotDependentArrow -> true | uu___ -> false
let (uu___is_Warning_NotEmbedded : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_NotEmbedded -> true | uu___ -> false
let (uu___is_Warning_PatternMissingBoundVar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_PatternMissingBoundVar -> true
    | uu___ -> false
let (uu___is_Warning_RecursiveDependency : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_RecursiveDependency -> true
    | uu___ -> false
let (uu___is_Warning_RedundantExplicitCurrying : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_RedundantExplicitCurrying -> true
    | uu___ -> false
let (uu___is_Warning_SMTPatTDeprecated : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_SMTPatTDeprecated -> true | uu___ -> false
let (uu___is_Warning_SMTPatternIllFormed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_SMTPatternIllFormed -> true
    | uu___ -> false
let (uu___is_Warning_TopLevelEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_TopLevelEffect -> true | uu___ -> false
let (uu___is_Warning_UnboundModuleReference : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnboundModuleReference -> true
    | uu___ -> false
let (uu___is_Warning_UnexpectedFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnexpectedFile -> true | uu___ -> false
let (uu___is_Warning_UnexpectedFsTypApp : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnexpectedFsTypApp -> true
    | uu___ -> false
let (uu___is_Warning_UnexpectedZ3Output : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnexpectedZ3Output -> true
    | uu___ -> false
let (uu___is_Warning_UnprotectedTerm : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnprotectedTerm -> true | uu___ -> false
let (uu___is_Warning_UnrecognizedAttribute : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnrecognizedAttribute -> true
    | uu___ -> false
let (uu___is_Warning_UpperBoundCandidateAlreadyVisited :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UpperBoundCandidateAlreadyVisited -> true
    | uu___ -> false
let (uu___is_Warning_UseDefaultEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UseDefaultEffect -> true | uu___ -> false
let (uu___is_Warning_WrongErrorLocation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_WrongErrorLocation -> true
    | uu___ -> false
let (uu___is_Warning_Z3InvocationWarning : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_Z3InvocationWarning -> true
    | uu___ -> false
let (uu___is_Warning_PluginNotImplemented : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_PluginNotImplemented -> true
    | uu___ -> false
let (uu___is_Warning_MissingInterfaceOrImplementation :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_MissingInterfaceOrImplementation -> true
    | uu___ -> false
let (uu___is_Warning_ConstructorBuildsUnexpectedType :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_ConstructorBuildsUnexpectedType -> true
    | uu___ -> false
let (uu___is_Warning_ModuleOrFileNotFoundWarning : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_ModuleOrFileNotFoundWarning -> true
    | uu___ -> false
let (uu___is_Error_NoLetMutable : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_NoLetMutable -> true | uu___ -> false
let (uu___is_Error_BadImplicit : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_BadImplicit -> true | uu___ -> false
let (uu___is_Warning_DeprecatedDefinition : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DeprecatedDefinition -> true
    | uu___ -> false
let (uu___is_Fatal_SMTEncodingArityMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_SMTEncodingArityMismatch -> true
    | uu___ -> false
let (uu___is_Warning_Defensive : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_Defensive -> true | uu___ -> false
let (uu___is_Warning_CantInspect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_CantInspect -> true | uu___ -> false
let (uu___is_Warning_NilGivenExplicitArgs : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_NilGivenExplicitArgs -> true
    | uu___ -> false
let (uu___is_Warning_ConsAppliedExplicitArgs : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_ConsAppliedExplicitArgs -> true
    | uu___ -> false
let (uu___is_Warning_UnembedBinderKnot : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnembedBinderKnot -> true | uu___ -> false
let (uu___is_Fatal_TacticProofRelevantGoal : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_TacticProofRelevantGoal -> true
    | uu___ -> false
let (uu___is_Warning_TacAdmit : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_TacAdmit -> true | uu___ -> false
let (uu___is_Fatal_IncoherentPatterns : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_IncoherentPatterns -> true | uu___ -> false
let (uu___is_Error_NoSMTButNeeded : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_NoSMTButNeeded -> true | uu___ -> false
let (uu___is_Fatal_UnexpectedAntiquotation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_UnexpectedAntiquotation -> true
    | uu___ -> false
let (uu___is_Fatal_SplicedUndef : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SplicedUndef -> true | uu___ -> false
let (uu___is_Fatal_SpliceUnembedFail : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_SpliceUnembedFail -> true | uu___ -> false
let (uu___is_Warning_ExtractionUnexpectedEffect : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_ExtractionUnexpectedEffect -> true
    | uu___ -> false
let (uu___is_Error_DidNotFail : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_DidNotFail -> true | uu___ -> false
let (uu___is_Warning_UnappliedFail : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnappliedFail -> true | uu___ -> false
let (uu___is_Warning_QuantifierWithoutPattern : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_QuantifierWithoutPattern -> true
    | uu___ -> false
let (uu___is_Error_EmptyFailErrs : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_EmptyFailErrs -> true | uu___ -> false
let (uu___is_Warning_logicqualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_logicqualifier -> true | uu___ -> false
let (uu___is_Fatal_CyclicDependence : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_CyclicDependence -> true | uu___ -> false
let (uu___is_Error_InductiveAnnotNotAType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_InductiveAnnotNotAType -> true
    | uu___ -> false
let (uu___is_Fatal_FriendInterface : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_FriendInterface -> true | uu___ -> false
let (uu___is_Error_CannotRedefineConst : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_CannotRedefineConst -> true | uu___ -> false
let (uu___is_Error_BadClassDecl : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_BadClassDecl -> true | uu___ -> false
let (uu___is_Error_BadInductiveParam : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_BadInductiveParam -> true | uu___ -> false
let (uu___is_Error_FieldShadow : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_FieldShadow -> true | uu___ -> false
let (uu___is_Error_UnexpectedDM4FType : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_UnexpectedDM4FType -> true | uu___ -> false
let (uu___is_Fatal_EffectAbbreviationResultTypeMismatch :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_EffectAbbreviationResultTypeMismatch -> true
    | uu___ -> false
let (uu___is_Error_AlreadyCachedAssertionFailure : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_AlreadyCachedAssertionFailure -> true
    | uu___ -> false
let (uu___is_Error_MustEraseMissing : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_MustEraseMissing -> true | uu___ -> false
let (uu___is_Warning_EffectfulArgumentToErasedFunction :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_EffectfulArgumentToErasedFunction -> true
    | uu___ -> false
let (uu___is_Fatal_EmptySurfaceLet : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_EmptySurfaceLet -> true | uu___ -> false
let (uu___is_Warning_UnexpectedCheckedFile : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnexpectedCheckedFile -> true
    | uu___ -> false
let (uu___is_Fatal_ExtractionUnsupported : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_ExtractionUnsupported -> true
    | uu___ -> false
let (uu___is_Warning_SMTErrorReason : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_SMTErrorReason -> true | uu___ -> false
let (uu___is_Warning_CoercionNotFound : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_CoercionNotFound -> true | uu___ -> false
let (uu___is_Error_QuakeFailed : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_QuakeFailed -> true | uu___ -> false
let (uu___is_Error_IllSMTPat : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_IllSMTPat -> true | uu___ -> false
let (uu___is_Error_IllScopedTerm : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_IllScopedTerm -> true | uu___ -> false
let (uu___is_Warning_UnusedLetRec : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnusedLetRec -> true | uu___ -> false
let (uu___is_Fatal_Effects_Ordering_Coherence : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Fatal_Effects_Ordering_Coherence -> true
    | uu___ -> false
let (uu___is_Warning_BleedingEdge_Feature : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_BleedingEdge_Feature -> true
    | uu___ -> false
let (uu___is_Warning_IgnoredBinding : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_IgnoredBinding -> true | uu___ -> false
let (uu___is_Warning_CouldNotReadHints : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_CouldNotReadHints -> true | uu___ -> false
let (uu___is_Fatal_BadUvar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Fatal_BadUvar -> true | uu___ -> false
let (uu___is_Warning_WarnOnUse : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_WarnOnUse -> true | uu___ -> false
let (uu___is_Warning_DeprecatedAttributeSyntax : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DeprecatedAttributeSyntax -> true
    | uu___ -> false
let (uu___is_Warning_DeprecatedGeneric : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_DeprecatedGeneric -> true | uu___ -> false
let (uu___is_Error_BadSplice : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_BadSplice -> true | uu___ -> false
let (uu___is_Error_UnexpectedUnresolvedUvar : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UnexpectedUnresolvedUvar -> true
    | uu___ -> false
let (uu___is_Warning_UnfoldPlugin : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_UnfoldPlugin -> true | uu___ -> false
let (uu___is_Error_LayeredMissingAnnot : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_LayeredMissingAnnot -> true | uu___ -> false
let (uu___is_Error_CallToErased : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_CallToErased -> true | uu___ -> false
let (uu___is_Error_ErasedCtor : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_ErasedCtor -> true | uu___ -> false
let (uu___is_Error_RemoveUnusedTypeParameter : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_RemoveUnusedTypeParameter -> true
    | uu___ -> false
let (uu___is_Warning_NoMagicInFSharp : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_NoMagicInFSharp -> true | uu___ -> false
let (uu___is_Error_BadLetOpenRecord : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_BadLetOpenRecord -> true | uu___ -> false
let (uu___is_Error_UnexpectedTypeclassInstance : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Error_UnexpectedTypeclassInstance -> true
    | uu___ -> false
let (uu___is_Warning_AmbiguousResolveImplicitsHook : raw_error -> Prims.bool)
  =
  fun projectee ->
    match projectee with
    | Warning_AmbiguousResolveImplicitsHook -> true
    | uu___ -> false
let (uu___is_Warning_SplitAndRetryQueries : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_SplitAndRetryQueries -> true
    | uu___ -> false
let (uu___is_Warning_DeprecatedLightDoNotation : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_DeprecatedLightDoNotation -> true
    | uu___ -> false
let (uu___is_Warning_FailedToCheckInitialTacticGoal :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_FailedToCheckInitialTacticGoal -> true
    | uu___ -> false
let (uu___is_Warning_Adhoc_IndexedEffect_Combinator :
  raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_Adhoc_IndexedEffect_Combinator -> true
    | uu___ -> false
let (uu___is_Error_PluginDynlink : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_PluginDynlink -> true | uu___ -> false
let (uu___is_Error_InternalQualifier : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Error_InternalQualifier -> true | uu___ -> false
let (uu___is_Warning_NameEscape : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_NameEscape -> true | uu___ -> false
let (uu___is_Warning_UnexpectedZ3Stderr : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_UnexpectedZ3Stderr -> true
    | uu___ -> false
let (uu___is_Warning_SolverMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_SolverMismatch -> true | uu___ -> false
let (uu___is_Warning_SolverVersionMismatch : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with
    | Warning_SolverVersionMismatch -> true
    | uu___ -> false
let (uu___is_Warning_ProofRecovery : raw_error -> Prims.bool) =
  fun projectee ->
    match projectee with | Warning_ProofRecovery -> true | uu___ -> false
type error_setting = (raw_error * error_flag * Prims.int)
let (default_settings : error_setting Prims.list) =
  [(Error_DependencyAnalysisFailed, CAlwaysError, Prims.int_zero);
  (Error_IDETooManyPops, CAlwaysError, Prims.int_one);
  (Error_IDEUnrecognized, CAlwaysError, (Prims.of_int (2)));
  (Error_InductiveTypeNotSatisfyPositivityCondition, CAlwaysError,
    (Prims.of_int (3)));
  (Error_InvalidUniverseVar, CAlwaysError, (Prims.of_int (4)));
  (Error_MissingFileName, CAlwaysError, (Prims.of_int (5)));
  (Error_ModuleFileNameMismatch, CAlwaysError, (Prims.of_int (6)));
  (Error_OpPlusInUniverse, CAlwaysError, (Prims.of_int (7)));
  (Error_OutOfRange, CAlwaysError, (Prims.of_int (8)));
  (Error_ProofObligationFailed, CError, (Prims.of_int (9)));
  (Error_TooManyFiles, CAlwaysError, (Prims.of_int (10)));
  (Error_TypeCheckerFailToProve, CAlwaysError, (Prims.of_int (11)));
  (Error_TypeError, CAlwaysError, (Prims.of_int (12)));
  (Error_UncontrainedUnificationVar, CAlwaysError, (Prims.of_int (13)));
  (Error_UnexpectedGTotComputation, CAlwaysError, (Prims.of_int (14)));
  (Error_UnexpectedInstance, CAlwaysError, (Prims.of_int (15)));
  (Error_UnknownFatal_AssertionFailure, CError, (Prims.of_int (16)));
  (Error_Z3InvocationError, CAlwaysError, (Prims.of_int (17)));
  (Error_IDEAssertionFailure, CAlwaysError, (Prims.of_int (18)));
  (Error_Z3SolverError, CError, (Prims.of_int (19)));
  (Fatal_AbstractTypeDeclarationInInterface, CFatal, (Prims.of_int (20)));
  (Fatal_ActionMustHaveFunctionType, CFatal, (Prims.of_int (21)));
  (Fatal_AlreadyDefinedTopLevelDeclaration, CFatal, (Prims.of_int (22)));
  (Fatal_ArgumentLengthMismatch, CFatal, (Prims.of_int (23)));
  (Fatal_AssertionFailure, CFatal, (Prims.of_int (24)));
  (Fatal_AssignToImmutableValues, CFatal, (Prims.of_int (25)));
  (Fatal_AssumeValInInterface, CFatal, (Prims.of_int (26)));
  (Fatal_BadlyInstantiatedSynthByTactic, CFatal, (Prims.of_int (27)));
  (Fatal_BadSignatureShape, CFatal, (Prims.of_int (28)));
  (Fatal_BinderAndArgsLengthMismatch, CFatal, (Prims.of_int (29)));
  (Fatal_BothValAndLetInInterface, CFatal, (Prims.of_int (30)));
  (Fatal_CardinalityConstraintViolated, CFatal, (Prims.of_int (31)));
  (Fatal_ComputationNotTotal, CFatal, (Prims.of_int (32)));
  (Fatal_ComputationTypeNotAllowed, CFatal, (Prims.of_int (33)));
  (Fatal_ComputedTypeNotMatchAnnotation, CFatal, (Prims.of_int (34)));
  (Fatal_ConstructorArgLengthMismatch, CFatal, (Prims.of_int (35)));
  (Fatal_ConstructorFailedCheck, CFatal, (Prims.of_int (36)));
  (Fatal_ConstructorNotFound, CFatal, (Prims.of_int (37)));
  (Fatal_ConstsructorBuildWrongType, CFatal, (Prims.of_int (38)));
  (Fatal_CycleInRecTypeAbbreviation, CFatal, (Prims.of_int (39)));
  (Fatal_DataContructorNotFound, CFatal, (Prims.of_int (40)));
  (Fatal_DefaultQualifierNotAllowedOnEffects, CFatal, (Prims.of_int (41)));
  (Fatal_DefinitionNotFound, CFatal, (Prims.of_int (42)));
  (Fatal_DisjuctivePatternVarsMismatch, CFatal, (Prims.of_int (43)));
  (Fatal_DivergentComputationCannotBeIncludedInTotal, CFatal,
    (Prims.of_int (44)));
  (Fatal_DuplicateInImplementation, CFatal, (Prims.of_int (45)));
  (Fatal_DuplicateModuleOrInterface, CFatal, (Prims.of_int (46)));
  (Fatal_DuplicateTopLevelNames, CFatal, (Prims.of_int (47)));
  (Fatal_DuplicateTypeAnnotationAndValDecl, CFatal, (Prims.of_int (48)));
  (Fatal_EffectCannotBeReified, CFatal, (Prims.of_int (49)));
  (Fatal_EffectConstructorNotFullyApplied, CFatal, (Prims.of_int (50)));
  (Fatal_EffectfulAndPureComputationMismatch, CFatal, (Prims.of_int (51)));
  (Fatal_EffectNotFound, CFatal, (Prims.of_int (52)));
  (Fatal_EffectsCannotBeComposed, CFatal, (Prims.of_int (53)));
  (Fatal_ErrorInSolveDeferredConstraints, CFatal, (Prims.of_int (54)));
  (Fatal_ErrorsReported, CFatal, (Prims.of_int (55)));
  (Fatal_EscapedBoundVar, CFatal, (Prims.of_int (56)));
  (Fatal_ExpectedArrowAnnotatedType, CFatal, (Prims.of_int (57)));
  (Fatal_ExpectedGhostExpression, CFatal, (Prims.of_int (58)));
  (Fatal_ExpectedPureExpression, CFatal, (Prims.of_int (59)));
  (Fatal_ExpectNormalizedEffect, CFatal, (Prims.of_int (60)));
  (Fatal_ExpectTermGotFunction, CFatal, (Prims.of_int (61)));
  (Fatal_ExpectTrivialPreCondition, CFatal, (Prims.of_int (62)));
  (Fatal_FailToExtractNativeTactic, CFatal, (Prims.of_int (63)));
  (Fatal_FailToCompileNativeTactic, CFatal, (Prims.of_int (64)));
  (Fatal_FailToProcessPragma, CFatal, (Prims.of_int (65)));
  (Fatal_FailToResolveImplicitArgument, CFatal, (Prims.of_int (66)));
  (Fatal_FailToSolveUniverseInEquality, CFatal, (Prims.of_int (67)));
  (Fatal_FieldsNotBelongToSameRecordType, CFatal, (Prims.of_int (68)));
  (Fatal_ForbiddenReferenceToCurrentModule, CFatal, (Prims.of_int (69)));
  (Fatal_FreeVariables, CFatal, (Prims.of_int (70)));
  (Fatal_FunctionTypeExpected, CFatal, (Prims.of_int (71)));
  (Fatal_IdentifierNotFound, CFatal, (Prims.of_int (72)));
  (Fatal_IllAppliedConstant, CFatal, (Prims.of_int (73)));
  (Fatal_IllegalCharInByteArray, CFatal, (Prims.of_int (74)));
  (Fatal_IllegalCharInOperatorName, CFatal, (Prims.of_int (75)));
  (Fatal_IllTyped, CFatal, (Prims.of_int (76)));
  (Fatal_ImpossibleAbbrevLidBundle, CFatal, (Prims.of_int (77)));
  (Fatal_ImpossibleAbbrevRenameBundle, CFatal, (Prims.of_int (78)));
  (Fatal_ImpossibleInductiveWithAbbrev, CFatal, (Prims.of_int (79)));
  (Fatal_ImpossiblePrePostAbs, CFatal, (Prims.of_int (80)));
  (Fatal_ImpossiblePrePostArrow, CFatal, (Prims.of_int (81)));
  (Fatal_ImpossibleToGenerateDMEffect, CFatal, (Prims.of_int (82)));
  (Fatal_ImpossibleTypeAbbrevBundle, CFatal, (Prims.of_int (83)));
  (Fatal_ImpossibleTypeAbbrevSigeltBundle, CFatal, (Prims.of_int (84)));
  (Fatal_IncludeModuleNotPrepared, CFatal, (Prims.of_int (85)));
  (Fatal_IncoherentInlineUniverse, CFatal, (Prims.of_int (86)));
  (Fatal_IncompatibleKinds, CFatal, (Prims.of_int (87)));
  (Fatal_IncompatibleNumberOfTypes, CFatal, (Prims.of_int (88)));
  (Fatal_IncompatibleSetOfUniverse, CFatal, (Prims.of_int (89)));
  (Fatal_IncompatibleUniverse, CFatal, (Prims.of_int (90)));
  (Fatal_InconsistentImplicitArgumentAnnotation, CFatal, (Prims.of_int (91)));
  (Fatal_InconsistentImplicitQualifier, CFatal, (Prims.of_int (92)));
  (Fatal_InconsistentQualifierAnnotation, CFatal, (Prims.of_int (93)));
  (Fatal_InferredTypeCauseVarEscape, CFatal, (Prims.of_int (94)));
  (Fatal_InlineRenamedAsUnfold, CFatal, (Prims.of_int (95)));
  (Fatal_InsufficientPatternArguments, CFatal, (Prims.of_int (96)));
  (Fatal_InterfaceAlreadyProcessed, CFatal, (Prims.of_int (97)));
  (Fatal_InterfaceNotImplementedByModule, CError, (Prims.of_int (98)));
  (Fatal_InterfaceWithTypeImplementation, CFatal, (Prims.of_int (99)));
  (Fatal_InvalidFloatingPointNumber, CFatal, (Prims.of_int (100)));
  (Fatal_InvalidFSDocKeyword, CFatal, (Prims.of_int (101)));
  (Fatal_InvalidIdentifier, CFatal, (Prims.of_int (102)));
  (Fatal_InvalidLemmaArgument, CFatal, (Prims.of_int (103)));
  (Fatal_InvalidNumericLiteral, CFatal, (Prims.of_int (104)));
  (Fatal_InvalidRedefinitionOfLexT, CFatal, (Prims.of_int (105)));
  (Fatal_InvalidUnicodeInStringLiteral, CFatal, (Prims.of_int (106)));
  (Fatal_InvalidUTF8Encoding, CFatal, (Prims.of_int (107)));
  (Fatal_InvalidWarnErrorSetting, CFatal, (Prims.of_int (108)));
  (Fatal_LetBoundMonadicMismatch, CFatal, (Prims.of_int (109)));
  (Fatal_LetMutableForVariablesOnly, CFatal, (Prims.of_int (110)));
  (Fatal_LetOpenModuleOnly, CFatal, (Prims.of_int (111)));
  (Fatal_LetRecArgumentMismatch, CFatal, (Prims.of_int (112)));
  (Fatal_MalformedActionDeclaration, CFatal, (Prims.of_int (113)));
  (Fatal_MismatchedPatternType, CFatal, (Prims.of_int (114)));
  (Fatal_MismatchUniversePolymorphic, CFatal, (Prims.of_int (115)));
  (Fatal_MissingDataConstructor, CFatal, (Prims.of_int (116)));
  (Fatal_MissingExposeInterfacesOption, CFatal, (Prims.of_int (117)));
  (Fatal_MissingFieldInRecord, CFatal, (Prims.of_int (118)));
  (Fatal_MissingImplementation, CFatal, (Prims.of_int (119)));
  (Fatal_MissingImplicitArguments, CFatal, (Prims.of_int (120)));
  (Fatal_MissingInterface, CFatal, (Prims.of_int (121)));
  (Fatal_MissingNameInBinder, CFatal, (Prims.of_int (122)));
  (Fatal_MissingPrimsModule, CFatal, (Prims.of_int (123)));
  (Fatal_MissingQuantifierBinder, CFatal, (Prims.of_int (124)));
  (Fatal_ModuleExpected, CFatal, (Prims.of_int (125)));
  (Fatal_ModuleFileNotFound, CFatal, (Prims.of_int (126)));
  (Fatal_ModuleFirstStatement, CFatal, (Prims.of_int (127)));
  (Fatal_ModuleNotFound, CFatal, (Prims.of_int (128)));
  (Fatal_ModuleOrFileNotFound, CFatal, (Prims.of_int (129)));
  (Fatal_MonadAlreadyDefined, CFatal, (Prims.of_int (130)));
  (Fatal_MoreThanOneDeclaration, CFatal, (Prims.of_int (131)));
  (Fatal_MultipleLetBinding, CFatal, (Prims.of_int (132)));
  (Fatal_NameNotFound, CFatal, (Prims.of_int (133)));
  (Fatal_NameSpaceNotFound, CFatal, (Prims.of_int (134)));
  (Fatal_NegativeUniverseConstFatal_NotSupported, CFatal,
    (Prims.of_int (135)));
  (Fatal_NoFileProvided, CFatal, (Prims.of_int (136)));
  (Fatal_NonInductiveInMutuallyDefinedType, CFatal, (Prims.of_int (137)));
  (Fatal_NonLinearPatternNotPermitted, CFatal, (Prims.of_int (138)));
  (Fatal_NonLinearPatternVars, CFatal, (Prims.of_int (139)));
  (Fatal_NonSingletonTopLevel, CFatal, (Prims.of_int (140)));
  (Fatal_NonSingletonTopLevelModule, CFatal, (Prims.of_int (141)));
  (Error_NonTopRecFunctionNotFullyEncoded, CAlwaysError,
    (Prims.of_int (142)));
  (Fatal_NonTrivialPreConditionInPrims, CFatal, (Prims.of_int (143)));
  (Fatal_NonVariableInductiveTypeParameter, CFatal, (Prims.of_int (144)));
  (Fatal_NotApplicationOrFv, CFatal, (Prims.of_int (145)));
  (Fatal_NotEnoughArgsToEffect, CFatal, (Prims.of_int (146)));
  (Fatal_NotEnoughArgumentsForEffect, CFatal, (Prims.of_int (147)));
  (Fatal_NotFunctionType, CFatal, (Prims.of_int (148)));
  (Fatal_NotSupported, CFatal, (Prims.of_int (149)));
  (Fatal_NotTopLevelModule, CFatal, (Prims.of_int (150)));
  (Fatal_NotValidFStarFile, CFatal, (Prims.of_int (151)));
  (Fatal_NotValidIncludeDirectory, CFatal, (Prims.of_int (152)));
  (Fatal_OneModulePerFile, CFatal, (Prims.of_int (153)));
  (Fatal_OpenGoalsInSynthesis, CFatal, (Prims.of_int (154)));
  (Fatal_OptionsNotCompatible, CFatal, (Prims.of_int (155)));
  (Fatal_OutOfOrder, CFatal, (Prims.of_int (156)));
  (Fatal_ParseErrors, CFatal, (Prims.of_int (157)));
  (Fatal_ParseItError, CFatal, (Prims.of_int (158)));
  (Fatal_PolyTypeExpected, CFatal, (Prims.of_int (159)));
  (Fatal_PossibleInfiniteTyp, CFatal, (Prims.of_int (160)));
  (Fatal_PreModuleMismatch, CFatal, (Prims.of_int (161)));
  (Fatal_QulifierListNotPermitted, CFatal, (Prims.of_int (162)));
  (Fatal_RecursiveFunctionLiteral, CFatal, (Prims.of_int (163)));
  (Fatal_ReflectOnlySupportedOnEffects, CFatal, (Prims.of_int (164)));
  (Fatal_ReservedPrefix, CFatal, (Prims.of_int (165)));
  (Fatal_SMTOutputParseError, CFatal, (Prims.of_int (166)));
  (Fatal_SMTSolverError, CFatal, (Prims.of_int (167)));
  (Fatal_SyntaxError, CFatal, (Prims.of_int (168)));
  (Fatal_SynthByTacticError, CFatal, (Prims.of_int (169)));
  (Fatal_TacticGotStuck, CFatal, (Prims.of_int (170)));
  (Fatal_TcOneFragmentFailed, CFatal, (Prims.of_int (171)));
  (Fatal_TermOutsideOfDefLanguage, CFatal, (Prims.of_int (172)));
  (Fatal_ToManyArgumentToFunction, CFatal, (Prims.of_int (173)));
  (Fatal_TooManyOrTooFewFileMatch, CFatal, (Prims.of_int (174)));
  (Fatal_TooManyPatternArguments, CFatal, (Prims.of_int (175)));
  (Fatal_TooManyUniverse, CFatal, (Prims.of_int (176)));
  (Fatal_TypeMismatch, CFatal, (Prims.of_int (177)));
  (Fatal_TypeWithinPatternsAllowedOnVariablesOnly, CFatal,
    (Prims.of_int (178)));
  (Fatal_UnableToReadFile, CFatal, (Prims.of_int (179)));
  (Fatal_UnepxectedOrUnboundOperator, CFatal, (Prims.of_int (180)));
  (Fatal_UnexpectedBinder, CFatal, (Prims.of_int (181)));
  (Fatal_UnexpectedBindShape, CFatal, (Prims.of_int (182)));
  (Fatal_UnexpectedChar, CFatal, (Prims.of_int (183)));
  (Fatal_UnexpectedComputationTypeForLetRec, CFatal, (Prims.of_int (184)));
  (Fatal_UnexpectedConstructorType, CFatal, (Prims.of_int (185)));
  (Fatal_UnexpectedDataConstructor, CFatal, (Prims.of_int (186)));
  (Fatal_UnexpectedEffect, CFatal, (Prims.of_int (187)));
  (Fatal_UnexpectedEmptyRecord, CFatal, (Prims.of_int (188)));
  (Fatal_UnexpectedExpressionType, CFatal, (Prims.of_int (189)));
  (Fatal_UnexpectedFunctionParameterType, CFatal, (Prims.of_int (190)));
  (Fatal_UnexpectedGeneralizedUniverse, CFatal, (Prims.of_int (191)));
  (Fatal_UnexpectedGTotForLetRec, CFatal, (Prims.of_int (192)));
  (Fatal_UnexpectedGuard, CFatal, (Prims.of_int (193)));
  (Fatal_UnexpectedIdentifier, CFatal, (Prims.of_int (194)));
  (Fatal_UnexpectedImplicitArgument, CFatal, (Prims.of_int (195)));
  (Fatal_UnexpectedImplictArgument, CFatal, (Prims.of_int (196)));
  (Fatal_UnexpectedInductivetype, CFatal, (Prims.of_int (197)));
  (Fatal_UnexpectedLetBinding, CFatal, (Prims.of_int (198)));
  (Fatal_UnexpectedModuleDeclaration, CFatal, (Prims.of_int (199)));
  (Fatal_UnexpectedNumberOfUniverse, CFatal, (Prims.of_int (200)));
  (Fatal_UnexpectedNumericLiteral, CFatal, (Prims.of_int (201)));
  (Fatal_UnexpectedPattern, CFatal, (Prims.of_int (203)));
  (Fatal_UnexpectedPosition, CFatal, (Prims.of_int (204)));
  (Fatal_UnExpectedPreCondition, CFatal, (Prims.of_int (205)));
  (Fatal_UnexpectedReturnShape, CFatal, (Prims.of_int (206)));
  (Fatal_UnexpectedSignatureForMonad, CFatal, (Prims.of_int (207)));
  (Fatal_UnexpectedTerm, CFatal, (Prims.of_int (208)));
  (Fatal_UnexpectedTermInUniverse, CFatal, (Prims.of_int (209)));
  (Fatal_UnexpectedTermType, CFatal, (Prims.of_int (210)));
  (Fatal_UnexpectedTermVQuote, CFatal, (Prims.of_int (211)));
  (Fatal_UnexpectedUniversePolymorphicReturn, CFatal, (Prims.of_int (212)));
  (Fatal_UnexpectedUniverseVariable, CFatal, (Prims.of_int (213)));
  (Fatal_UnfoldableDeprecated, CFatal, (Prims.of_int (214)));
  (Fatal_UnificationNotWellFormed, CFatal, (Prims.of_int (215)));
  (Fatal_Uninstantiated, CFatal, (Prims.of_int (216)));
  (Error_UninstantiatedUnificationVarInTactic, CError, (Prims.of_int (217)));
  (Fatal_UninstantiatedVarInTactic, CFatal, (Prims.of_int (218)));
  (Fatal_UniverseMightContainSumOfTwoUnivVars, CFatal, (Prims.of_int (219)));
  (Fatal_UniversePolymorphicInnerLetBound, CFatal, (Prims.of_int (220)));
  (Fatal_UnknownAttribute, CFatal, (Prims.of_int (221)));
  (Fatal_UnknownToolForDep, CFatal, (Prims.of_int (222)));
  (Fatal_UnrecognizedExtension, CFatal, (Prims.of_int (223)));
  (Fatal_UnresolvedPatternVar, CFatal, (Prims.of_int (224)));
  (Fatal_UnsupportedConstant, CFatal, (Prims.of_int (225)));
  (Fatal_UnsupportedDisjuctivePatterns, CFatal, (Prims.of_int (226)));
  (Fatal_UnsupportedQualifier, CFatal, (Prims.of_int (227)));
  (Fatal_UserTacticFailure, CFatal, (Prims.of_int (228)));
  (Fatal_ValueRestriction, CFatal, (Prims.of_int (229)));
  (Fatal_VariableNotFound, CFatal, (Prims.of_int (230)));
  (Fatal_WrongBodyTypeForReturnWP, CFatal, (Prims.of_int (231)));
  (Fatal_WrongDataAppHeadFormat, CFatal, (Prims.of_int (232)));
  (Fatal_WrongDefinitionOrder, CFatal, (Prims.of_int (233)));
  (Fatal_WrongResultTypeAfterConstrutor, CFatal, (Prims.of_int (234)));
  (Fatal_WrongTerm, CFatal, (Prims.of_int (235)));
  (Fatal_WhenClauseNotSupported, CFatal, (Prims.of_int (236)));
  (Unused01, CFatal, (Prims.of_int (237)));
  (Warning_PluginNotImplemented, CError, (Prims.of_int (238)));
  (Warning_AddImplicitAssumeNewQualifier, CWarning, (Prims.of_int (239)));
  (Error_AdmitWithoutDefinition, CError, (Prims.of_int (240)));
  (Warning_CachedFile, CWarning, (Prims.of_int (241)));
  (Warning_DefinitionNotTranslated, CWarning, (Prims.of_int (242)));
  (Warning_DependencyFound, CWarning, (Prims.of_int (243)));
  (Warning_DeprecatedEqualityOnBinder, CWarning, (Prims.of_int (244)));
  (Warning_DeprecatedOpaqueQualifier, CWarning, (Prims.of_int (245)));
  (Warning_DocOverwrite, CWarning, (Prims.of_int (246)));
  (Warning_FileNotWritten, CWarning, (Prims.of_int (247)));
  (Warning_Filtered, CWarning, (Prims.of_int (248)));
  (Warning_FunctionLiteralPrecisionLoss, CWarning, (Prims.of_int (249)));
  (Warning_FunctionNotExtacted, CWarning, (Prims.of_int (250)));
  (Warning_HintFailedToReplayProof, CWarning, (Prims.of_int (251)));
  (Warning_HitReplayFailed, CWarning, (Prims.of_int (252)));
  (Warning_IDEIgnoreCodeGen, CWarning, (Prims.of_int (253)));
  (Warning_IllFormedGoal, CWarning, (Prims.of_int (254)));
  (Warning_InaccessibleArgument, CWarning, (Prims.of_int (255)));
  (Warning_IncoherentImplicitQualifier, CWarning, (Prims.of_int (256)));
  (Warning_IrrelevantQualifierOnArgumentToReflect, CWarning,
    (Prims.of_int (257)));
  (Warning_IrrelevantQualifierOnArgumentToReify, CWarning,
    (Prims.of_int (258)));
  (Warning_MalformedWarnErrorList, CWarning, (Prims.of_int (259)));
  (Warning_MetaAlienNotATmUnknown, CWarning, (Prims.of_int (260)));
  (Warning_MultipleAscriptions, CWarning, (Prims.of_int (261)));
  (Warning_NondependentUserDefinedDataType, CWarning, (Prims.of_int (262)));
  (Warning_NonListLiteralSMTPattern, CWarning, (Prims.of_int (263)));
  (Warning_NormalizationFailure, CWarning, (Prims.of_int (264)));
  (Warning_NotDependentArrow, CWarning, (Prims.of_int (265)));
  (Warning_NotEmbedded, CWarning, (Prims.of_int (266)));
  (Warning_PatternMissingBoundVar, CWarning, (Prims.of_int (267)));
  (Warning_RecursiveDependency, CWarning, (Prims.of_int (268)));
  (Warning_RedundantExplicitCurrying, CWarning, (Prims.of_int (269)));
  (Warning_SMTPatTDeprecated, CWarning, (Prims.of_int (270)));
  (Warning_SMTPatternIllFormed, CWarning, (Prims.of_int (271)));
  (Warning_TopLevelEffect, CWarning, (Prims.of_int (272)));
  (Warning_UnboundModuleReference, CWarning, (Prims.of_int (273)));
  (Warning_UnexpectedFile, CWarning, (Prims.of_int (274)));
  (Warning_UnexpectedFsTypApp, CWarning, (Prims.of_int (275)));
  (Warning_UnexpectedZ3Output, CError, (Prims.of_int (276)));
  (Warning_UnprotectedTerm, CWarning, (Prims.of_int (277)));
  (Warning_UnrecognizedAttribute, CWarning, (Prims.of_int (278)));
  (Warning_UpperBoundCandidateAlreadyVisited, CWarning, (Prims.of_int (279)));
  (Warning_UseDefaultEffect, CWarning, (Prims.of_int (280)));
  (Warning_WrongErrorLocation, CWarning, (Prims.of_int (281)));
  (Warning_Z3InvocationWarning, CWarning, (Prims.of_int (282)));
  (Warning_MissingInterfaceOrImplementation, CWarning, (Prims.of_int (283)));
  (Warning_ConstructorBuildsUnexpectedType, CWarning, (Prims.of_int (284)));
  (Warning_ModuleOrFileNotFoundWarning, CWarning, (Prims.of_int (285)));
  (Error_NoLetMutable, CAlwaysError, (Prims.of_int (286)));
  (Error_BadImplicit, CAlwaysError, (Prims.of_int (287)));
  (Warning_DeprecatedDefinition, CWarning, (Prims.of_int (288)));
  (Fatal_SMTEncodingArityMismatch, CFatal, (Prims.of_int (289)));
  (Warning_Defensive, CWarning, (Prims.of_int (290)));
  (Warning_CantInspect, CWarning, (Prims.of_int (291)));
  (Warning_NilGivenExplicitArgs, CWarning, (Prims.of_int (292)));
  (Warning_ConsAppliedExplicitArgs, CWarning, (Prims.of_int (293)));
  (Warning_UnembedBinderKnot, CWarning, (Prims.of_int (294)));
  (Fatal_TacticProofRelevantGoal, CFatal, (Prims.of_int (295)));
  (Warning_TacAdmit, CWarning, (Prims.of_int (296)));
  (Fatal_IncoherentPatterns, CFatal, (Prims.of_int (297)));
  (Error_NoSMTButNeeded, CAlwaysError, (Prims.of_int (298)));
  (Fatal_UnexpectedAntiquotation, CFatal, (Prims.of_int (299)));
  (Fatal_SplicedUndef, CFatal, (Prims.of_int (300)));
  (Fatal_SpliceUnembedFail, CFatal, (Prims.of_int (301)));
  (Warning_ExtractionUnexpectedEffect, CWarning, (Prims.of_int (302)));
  (Error_DidNotFail, CError, (Prims.of_int (303)));
  (Warning_UnappliedFail, CWarning, (Prims.of_int (304)));
  (Warning_QuantifierWithoutPattern, CSilent, (Prims.of_int (305)));
  (Error_EmptyFailErrs, CAlwaysError, (Prims.of_int (306)));
  (Warning_logicqualifier, CWarning, (Prims.of_int (307)));
  (Fatal_CyclicDependence, CFatal, (Prims.of_int (308)));
  (Error_InductiveAnnotNotAType, CError, (Prims.of_int (309)));
  (Fatal_FriendInterface, CFatal, (Prims.of_int (310)));
  (Error_CannotRedefineConst, CError, (Prims.of_int (311)));
  (Error_BadClassDecl, CError, (Prims.of_int (312)));
  (Error_BadInductiveParam, CFatal, (Prims.of_int (313)));
  (Error_FieldShadow, CFatal, (Prims.of_int (314)));
  (Error_UnexpectedDM4FType, CFatal, (Prims.of_int (315)));
  (Fatal_EffectAbbreviationResultTypeMismatch, CFatal, (Prims.of_int (316)));
  (Error_AlreadyCachedAssertionFailure, CFatal, (Prims.of_int (317)));
  (Error_MustEraseMissing, CWarning, (Prims.of_int (318)));
  (Warning_EffectfulArgumentToErasedFunction, CWarning, (Prims.of_int (319)));
  (Fatal_EmptySurfaceLet, CFatal, (Prims.of_int (320)));
  (Warning_UnexpectedCheckedFile, CWarning, (Prims.of_int (321)));
  (Fatal_ExtractionUnsupported, CFatal, (Prims.of_int (322)));
  (Warning_SMTErrorReason, CWarning, (Prims.of_int (323)));
  (Warning_CoercionNotFound, CWarning, (Prims.of_int (324)));
  (Error_QuakeFailed, CError, (Prims.of_int (325)));
  (Error_IllSMTPat, CError, (Prims.of_int (326)));
  (Error_IllScopedTerm, CError, (Prims.of_int (327)));
  (Warning_UnusedLetRec, CWarning, (Prims.of_int (328)));
  (Fatal_Effects_Ordering_Coherence, CError, (Prims.of_int (329)));
  (Warning_BleedingEdge_Feature, CWarning, (Prims.of_int (330)));
  (Warning_IgnoredBinding, CWarning, (Prims.of_int (331)));
  (Warning_CouldNotReadHints, CWarning, (Prims.of_int (333)));
  (Fatal_BadUvar, CFatal, (Prims.of_int (334)));
  (Warning_WarnOnUse, CSilent, (Prims.of_int (335)));
  (Warning_DeprecatedAttributeSyntax, CSilent, (Prims.of_int (336)));
  (Warning_DeprecatedGeneric, CWarning, (Prims.of_int (337)));
  (Error_BadSplice, CError, (Prims.of_int (338)));
  (Error_UnexpectedUnresolvedUvar, CAlwaysError, (Prims.of_int (339)));
  (Warning_UnfoldPlugin, CWarning, (Prims.of_int (340)));
  (Error_LayeredMissingAnnot, CAlwaysError, (Prims.of_int (341)));
  (Error_CallToErased, CError, (Prims.of_int (342)));
  (Error_ErasedCtor, CError, (Prims.of_int (343)));
  (Error_RemoveUnusedTypeParameter, CWarning, (Prims.of_int (344)));
  (Warning_NoMagicInFSharp, CWarning, (Prims.of_int (345)));
  (Error_BadLetOpenRecord, CAlwaysError, (Prims.of_int (346)));
  (Error_UnexpectedTypeclassInstance, CAlwaysError, (Prims.of_int (347)));
  (Warning_AmbiguousResolveImplicitsHook, CWarning, (Prims.of_int (348)));
  (Warning_SplitAndRetryQueries, CWarning, (Prims.of_int (349)));
  (Warning_DeprecatedLightDoNotation, CWarning, (Prims.of_int (350)));
  (Warning_FailedToCheckInitialTacticGoal, CSilent, (Prims.of_int (351)));
  (Warning_Adhoc_IndexedEffect_Combinator, CWarning, (Prims.of_int (352)));
  (Error_PluginDynlink, CError, (Prims.of_int (353)));
  (Error_InternalQualifier, CAlwaysError, (Prims.of_int (354)));
  (Warning_NameEscape, CWarning, (Prims.of_int (355)));
  (Warning_UnexpectedZ3Stderr, CWarning, (Prims.of_int (356)));
  (Warning_SolverMismatch, CError, (Prims.of_int (357)));
  (Warning_SolverVersionMismatch, CError, (Prims.of_int (358)));
  (Warning_ProofRecovery, CWarning, (Prims.of_int (359)))]