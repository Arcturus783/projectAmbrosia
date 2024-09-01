// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
    int? count;
    int? page;
    int? pageCount;
    int? pageSize;
    List<Product>? products;
    int? skip;

    Data({
        this.count,
        this.page,
        this.pageCount,
        this.pageSize,
        this.products,
        this.skip,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"],
        page: json["page"],
        pageCount: json["page_count"],
        pageSize: json["page_size"],
        products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
        skip: json["skip"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "page": page,
        "page_count": pageCount,
        "page_size": pageSize,
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
        "skip": skip,
    };
}

class Product {
    String? id;
    List<String>? keywords;
    List<dynamic>? addedCountriesTags;
    List<String>? additivesDebugTags;
    int? additivesN;
    int? additivesOldN;
    List<String>? additivesOldTags;
    List<String>? additivesOriginalTags;
    List<String>? additivesPrevOriginalTags;
    List<String>? additivesTags;
    String? allergens;
    String? allergensFromIngredients;
    String? allergensFromUser;
    List<String>? allergensHierarchy;
    AllergensLc? allergensLc;
    List<String>? allergensTags;
    List<dynamic>? aminoAcidsPrevTags;
    List<dynamic>? aminoAcidsTags;
    String? brands;
    List<String>? brandsTags;
    String? carbonFootprintFromKnownIngredientsDebug;
    double? carbonFootprintPercentOfKnownIngredients;
    String? categories;
    List<String>? categoriesHierarchy;
    AllergensLc? categoriesLc;
    String? categoriesOld;
    CategoriesProperties? categoriesProperties;
    List<String>? categoriesPropertiesTags;
    List<String>? categoriesTags;
    CategoryProperties? categoryProperties;
    List<String>? checkersTags;
    List<String>? ciqualFoodNameTags;
    List<String>? citiesTags;
    String? code;
    List<String>? codesTags;
    String? comparedToCategory;
    int? complete;
    double? completeness;
    List<String>? correctorsTags;
    String? countries;
    List<String>? countriesHierarchy;
    AllergensLc? countriesLc;
    List<String>? countriesTags;
    int? createdT;
    String? creator;
    List<dynamic>? dataQualityBugsTags;
    List<String>? dataQualityErrorsTags;
    List<String>? dataQualityInfoTags;
    List<String>? dataQualityTags;
    List<String>? dataQualityWarningsTags;
    String? dataSources;
    List<String>? dataSourcesTags;
    List<String>? debugParamSortedLangs;
    EcoscoreData? ecoscoreData;
    EcoscoreExtendedData? ecoscoreExtendedData;
    String? ecoscoreExtendedDataVersion;
    EcoscoreGrade? ecoscoreGrade;
    int? ecoscoreScore;
    List<EcoscoreGrade>? ecoscoreTags;
    List<String>? editorsTags;
    String? embCodes;
    String? embCodesOrig;
    List<String>? embCodesTags;
    List<String>? entryDatesTags;
    String? environmentImpactLevel;
    List<dynamic>? environmentImpactLevelTags;
    String? expirationDate;
    FoodGroups? foodGroups;
    List<FoodGroups>? foodGroupsTags;
    ForestFootprintData? forestFootprintData;
    int? fruitsVegetablesNuts100GEstimate;
    String? genericName;
    String? genericNameFr;
    String? productId;
    String? imageFrontSmallUrl;
    String? imageFrontThumbUrl;
    String? imageFrontUrl;
    String? imageSmallUrl;
    String? imageThumbUrl;
    String? imageUrl;
    Images? images;
    List<String>? informersTags;
    List<ProductIngredient>? ingredients;
    IngredientsAnalysis? ingredientsAnalysis;
    List<IngredientsAnalysisTag>? ingredientsAnalysisTags;
    List<String?>? ingredientsDebug;
    int? ingredientsFromOrThatMayBeFromPalmOilN;
    int? ingredientsFromPalmOilN;
    List<dynamic>? ingredientsFromPalmOilTags;
    List<String>? ingredientsHierarchy;
    List<String>? ingredientsIdsDebug;
    AllergensLc? ingredientsLc;
    int? ingredientsN;
    List<String>? ingredientsNTags;
    int? ingredientsNonNutritiveSweetenersN;
    List<String>? ingredientsOriginalTags;
    int? ingredientsPercentAnalysis;
    int? ingredientsSweetenersN;
    List<String>? ingredientsTags;
    String? ingredientsText;
    String? ingredientsTextDebug;
    String? ingredientsTextEn;
    String? ingredientsTextFr;
    String? ingredientsTextWithAllergens;
    String? ingredientsTextWithAllergensEn;
    String? ingredientsTextWithAllergensFr;
    int? ingredientsThatMayBeFromPalmOilN;
    List<String>? ingredientsThatMayBeFromPalmOilTags;
    int? ingredientsWithSpecifiedPercentN;
    double? ingredientsWithSpecifiedPercentSum;
    int? ingredientsWithUnspecifiedPercentN;
    double? ingredientsWithUnspecifiedPercentSum;
    List<String>? ingredientsWithoutCiqualCodes;
    int? ingredientsWithoutCiqualCodesN;
    String? interfaceVersionCreated;
    String? interfaceVersionModified;
    int? knownIngredientsN;
    String? labels;
    List<String>? labelsHierarchy;
    AllergensLc? labelsLc;
    String? labelsOld;
    List<String>? labelsTags;
    AllergensLc? lang;
    Map<String, int>? languages;
    LanguagesCodes? languagesCodes;
    List<String>? languagesHierarchy;
    List<String>? languagesTags;
    List<String>? lastEditDatesTags;
    String? lastEditor;
    List<String>? lastImageDatesTags;
    int? lastImageT;
    String? lastModifiedBy;
    int? lastModifiedT;
    int? lastUpdatedT;
    AllergensLc? lc;
    String? link;
    List<dynamic>? mainCountriesTags;
    String? manufacturingPlaces;
    List<String>? manufacturingPlacesTags;
    dynamic maxImgid;
    List<String>? mineralsPrevTags;
    List<String>? mineralsTags;
    List<String>? miscTags;
    Checked? noNutritionData;
    int? novaGroup;
    NovaGroupDebug? novaGroupDebug;
    String? novaGroups;
    Map<String, List<List<String>>>? novaGroupsMarkers;
    List<NovaGroupsTag>? novaGroupsTags;
    List<dynamic>? nucleotidesPrevTags;
    List<dynamic>? nucleotidesTags;
    NutrientLevels? nutrientLevels;
    List<NutrientLevelsTag>? nutrientLevelsTags;
    Nutriments? nutriments;
    Map<String, double>? nutrimentsEstimated;
    Map<String, Nutriscore>? nutriscore;
    List<EcoscoreGrade>? nutriscore2021Tags;
    List<EcoscoreGrade>? nutriscore2023Tags;
    NutriscoreData? nutriscoreData;
    EcoscoreGrade? nutriscoreGrade;
    int? nutriscoreScore;
    int? nutriscoreScoreOpposite;
    List<EcoscoreGrade>? nutriscoreTags;
    String? nutriscoreVersion;
    Checked? nutritionData;
    NutritionDataP? nutritionDataPer;
    String? nutritionDataPrepared;
    NutritionDataP? nutritionDataPreparedPer;
    EcoscoreGrade? nutritionGradeFr;
    EcoscoreGrade? nutritionGrades;
    List<EcoscoreGrade>? nutritionGradesTags;
    int? nutritionScoreBeverage;
    String? nutritionScoreDebug;
    int? nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients;
    double? nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue;
    int? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients;
    double? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue;
    String? obsolete;
    String? obsoleteSinceDate;
    String? origins;
    List<String>? originsHierarchy;
    OriginsLc? originsLc;
    String? originsOld;
    List<String>? originsTags;
    List<dynamic>? otherNutritionalSubstancesTags;
    String? packaging;
    List<String>? packagingHierarchy;
    AllergensLc? packagingLc;
    List<String>? packagingMaterialsTags;
    String? packagingOld;
    String? packagingOldBeforeTaxonomization;
    List<PackagingRecyclingTag>? packagingRecyclingTags;
    List<String>? packagingShapesTags;
    List<String>? packagingTags;
    String? packagingText;
    String? packagingTextFr;
    List<PackagingElement>? packagings;
    int? packagingsComplete;
    PackagingsMaterials? packagingsMaterials;
    int? packagingsN;
    List<String>? photographersTags;
    PnnsGroups1? pnnsGroups1;
    List<PnnsGroups1Tag>? pnnsGroups1Tags;
    PnnsGroups2? pnnsGroups2;
    List<PnnsGroups2Tag>? pnnsGroups2Tags;
    int? popularityKey;
    List<String>? popularityTags;
    String? productName;
    String? productNameEn;
    String? productNameFr;
    dynamic productQuantity;
    Unit? productQuantityUnit;
    String? purchasePlaces;
    List<String>? purchasePlacesTags;
    String? quantity;
    List<dynamic>? removedCountriesTags;
    int? rev;
    int? scansN;
    SelectedImages? selectedImages;
    String? servingSize;
    int? sortkey;
    String? states;
    List<String>? statesHierarchy;
    List<String>? statesTags;
    String? stores;
    List<String>? storesTags;
    String? teams;
    List<String>? teamsTags;
    String? traces;
    String? tracesFromIngredients;
    String? tracesFromUser;
    List<String>? tracesHierarchy;
    AllergensLc? tracesLc;
    List<String>? tracesTags;
    int? uniqueScansN;
    int? unknownIngredientsN;
    List<String>? unknownNutrientsTags;
    String? updateKey;
    String? url;
    List<String>? vitaminsPrevTags;
    List<String>? vitaminsTags;
    List<String>? weighersTags;
    String? allergensImported;
    String? brandsImported;
    CountriesImported? countriesImported;
    String? dataSourcesImported;
    List<String>? editors;
    String? embCodes20141016;
    GenericNameEn? genericNameEn;
    String? ingredientsTextFrImported;
    AllergensLc? lcImported;
    Unit? netWeightUnit;
    String? netWeightValue;
    NutritionDataP? nutritionDataPerImported;
    NutritionDataP? nutritionDataPreparedPerImported;
    EcoscoreGrade? nutritionGradeFrProducer;
    String? origin;
    String? originEn;
    String? originFr;
    List<dynamic>? otherNutritionalSubstancesPrevTags;
    Owner? owner;
    Map<String, int>? ownerFields;
    Owner? ownersTags;
    PackagingTextEn? packagingTextEn;
    String? productNameFrImported;
    String? quantityImported;
    int? servingQuantity;
    Unit? servingQuantityUnit;
    List<Source>? sources;
    String? storesImported;
    int? completedT;
    List<dynamic>? ingredientsTextDebugTags;
    int? nutritionScoreWarningNoFiber;
    List<dynamic>? checkers;
    List<String>? correctors;
    Grades? grades;
    List<String>? informers;
    int? newAdditivesN;
    List<String>? photographers;
    Grades? scores;
    List<SpecificIngredient>? specificIngredients;
    List<String>? debugTags;
    String? carbonFootprintFromMeatOrFishDebug;
    Checked? checked;
    List<String>? lastCheckDatesTags;
    int? lastCheckedT;
    String? lastChecker;
    int? nutritionScoreWarningFruitsVegetablesNutsEstimate;
    String? packagingsMaterialsMain;
    List<dynamic>? weightersTags;
    String? genericNameDe;
    String? ingredientsTextDe;
    String? ingredientsTextDeOcr1574621815;
    String? ingredientsTextDeOcr1574621815Result;
    String? ingredientsTextFi;
    String? ingredientsTextWithAllergensDe;
    String? ingredientsTextWithAllergensFi;
    String? originDe;
    String? packagingTextDe;
    String? packagingTextFi;
    String? productNameDe;
    String? productNameFi;
    String? abbreviatedProductName;
    String? abbreviatedProductNameFr;
    String? abbreviatedProductNameFrImported;
    String? abbreviatedProductNameImported;
    String? categoriesImported;
    String? conservationConditions;
    String? conservationConditionsFr;
    String? conservationConditionsFrImported;
    String? customerService;
    String? customerServiceFr;
    String? customerServiceFrImported;
    String? genericNameFrImported;
    AllergensLc? langImported;
    String? nutriscoreGradeProducer;
    String? nutriscoreGradeProducerImported;
    String? obsoleteImported;
    String? servingSizeImported;
    SourcesFields? sourcesFields;
    String? tracesImported;
    String? ingredientsTextFrOcr1546446890;
    String? ingredientsTextFrOcr1546446890Result;
    String? novaGroupError;
    String? producerVersionId;
    String? conservationConditionsEs;
    String? conservationConditionsEsImported;
    String? customerServiceEs;
    String? customerServiceEsImported;
    String? genericNameEs;
    String? genericNameEsImported;
    String? ingredientsTextEs;
    String? ingredientsTextEsImported;
    String? ingredientsTextWithAllergensEs;
    String? labelsImported;
    String? originEs;
    Owner? ownerImported;
    String? packagingTextEs;
    String? producerProductId;
    String? producerProductIdImported;
    String? productNameEs;
    String? productNameEsImported;
    String? producer;
    String? producerFr;
    String? embCodesImported;
    String? preparation;
    String? preparationFr;
    String? preparationFrImported;
    String? originFrImported;
    String? otherInformation;
    String? otherInformationFr;
    String? producerFrImported;
    String? countriesBeforescanbot;
    List<dynamic>? expirationDateDebugTags;
    List<dynamic>? genericNameEnDebugTags;
    List<dynamic>? genericNameFrDebugTags;
    String? genericNameIt;
    List<dynamic>? genericNameItDebugTags;
    List<dynamic>? ingredientsTextFrDebugTags;
    String? ingredientsTextIt;
    List<dynamic>? ingredientsTextItDebugTags;
    String? ingredientsTextWithAllergensIt;
    List<dynamic>? langDebugTags;
    List<dynamic>? linkDebugTags;
    List<dynamic>? productNameEnDebugTags;
    List<dynamic>? productNameFrDebugTags;
    String? productNameIt;
    List<dynamic>? productNameItDebugTags;
    List<dynamic>? purchasePlacesDebugTags;
    List<dynamic>? servingSizeDebugTags;
    List<dynamic>? storesDebugTags;
    List<dynamic>? tracesDebugTags;
    String? genericNameCs;
    String? genericNameNl;
    String? ingredientsTextCs;
    String? ingredientsTextFrOcr1548773315;
    String? ingredientsTextFrOcr1548773315Result;
    String? ingredientsTextNl;
    String? ingredientsTextWithAllergensCs;
    String? ingredientsTextWithAllergensNl;
    String? originCs;
    String? originIt;
    String? originNl;
    String? packagingTextCs;
    String? packagingTextIt;
    String? packagingTextNl;
    String? productNameCs;
    String? productNameNl;
    List<dynamic>? allergensDebugTags;
    List<dynamic>? brandsDebugTags;
    List<dynamic>? countriesDebugTags;
    List<dynamic>? embCodesDebugTags;
    List<dynamic>? manufacturingPlacesDebugTags;
    List<dynamic>? nutritionDataPreparedPerDebugTags;
    List<dynamic>? quantityDebugTags;
    String? ingredientsTextFrOcr1549708244;
    String? ingredientsTextFrOcr1549708244Result;
    String? ingredientsTextFrOcr1562673306;
    String? ingredientsTextFrOcr1562673306Result;
    List<dynamic>? productNameDebugTags;
    String? ingredientsTextFrOcr1540905347;
    String? ingredientsTextFrOcr1540905347Result;
    String? conservationConditionsNl;
    String? conservationConditionsNlImported;
    String? customerServiceNl;
    String? customerServiceNlImported;
    String? genericNameNlImported;
    String? ingredientsTextNlImported;
    String? productNameNlImported;
    String? genericNameBg;
    String? genericNameRo;
    String? ingredientsTextBg;
    String? ingredientsTextRo;
    String? ingredientsTextWithAllergensBg;
    String? ingredientsTextWithAllergensRo;
    int? nutritionScoreWarningNoFruitsVegetablesNuts;
    String? originBg;
    String? originRo;
    String? packagingTextBg;
    String? packagingTextRo;
    String? productNameBg;
    String? productNameRo;
    String? ingredientsTextDeOcr1566234809;
    String? ingredientsTextDeOcr1566234809Result;
    String? ingredientsTextFrOcr1566234633;
    String? ingredientsTextFrOcr1566234633Result;
    String? ingredientsTextFrOcr1544199794;
    String? ingredientsTextFrOcr1544199794Result;

    Product({
        this.id,
        this.keywords,
        this.addedCountriesTags,
        this.additivesDebugTags,
        this.additivesN,
        this.additivesOldN,
        this.additivesOldTags,
        this.additivesOriginalTags,
        this.additivesPrevOriginalTags,
        this.additivesTags,
        this.allergens,
        this.allergensFromIngredients,
        this.allergensFromUser,
        this.allergensHierarchy,
        this.allergensLc,
        this.allergensTags,
        this.aminoAcidsPrevTags,
        this.aminoAcidsTags,
        this.brands,
        this.brandsTags,
        this.carbonFootprintFromKnownIngredientsDebug,
        this.carbonFootprintPercentOfKnownIngredients,
        this.categories,
        this.categoriesHierarchy,
        this.categoriesLc,
        this.categoriesOld,
        this.categoriesProperties,
        this.categoriesPropertiesTags,
        this.categoriesTags,
        this.categoryProperties,
        this.checkersTags,
        this.ciqualFoodNameTags,
        this.citiesTags,
        this.code,
        this.codesTags,
        this.comparedToCategory,
        this.complete,
        this.completeness,
        this.correctorsTags,
        this.countries,
        this.countriesHierarchy,
        this.countriesLc,
        this.countriesTags,
        this.createdT,
        this.creator,
        this.dataQualityBugsTags,
        this.dataQualityErrorsTags,
        this.dataQualityInfoTags,
        this.dataQualityTags,
        this.dataQualityWarningsTags,
        this.dataSources,
        this.dataSourcesTags,
        this.debugParamSortedLangs,
        this.ecoscoreData,
        this.ecoscoreExtendedData,
        this.ecoscoreExtendedDataVersion,
        this.ecoscoreGrade,
        this.ecoscoreScore,
        this.ecoscoreTags,
        this.editorsTags,
        this.embCodes,
        this.embCodesOrig,
        this.embCodesTags,
        this.entryDatesTags,
        this.environmentImpactLevel,
        this.environmentImpactLevelTags,
        this.expirationDate,
        this.foodGroups,
        this.foodGroupsTags,
        this.forestFootprintData,
        this.fruitsVegetablesNuts100GEstimate,
        this.genericName,
        this.genericNameFr,
        this.productId,
        this.imageFrontSmallUrl,
        this.imageFrontThumbUrl,
        this.imageFrontUrl,
        this.imageSmallUrl,
        this.imageThumbUrl,
        this.imageUrl,
        this.images,
        this.informersTags,
        this.ingredients,
        this.ingredientsAnalysis,
        this.ingredientsAnalysisTags,
        this.ingredientsDebug,
        this.ingredientsFromOrThatMayBeFromPalmOilN,
        this.ingredientsFromPalmOilN,
        this.ingredientsFromPalmOilTags,
        this.ingredientsHierarchy,
        this.ingredientsIdsDebug,
        this.ingredientsLc,
        this.ingredientsN,
        this.ingredientsNTags,
        this.ingredientsNonNutritiveSweetenersN,
        this.ingredientsOriginalTags,
        this.ingredientsPercentAnalysis,
        this.ingredientsSweetenersN,
        this.ingredientsTags,
        this.ingredientsText,
        this.ingredientsTextDebug,
        this.ingredientsTextEn,
        this.ingredientsTextFr,
        this.ingredientsTextWithAllergens,
        this.ingredientsTextWithAllergensEn,
        this.ingredientsTextWithAllergensFr,
        this.ingredientsThatMayBeFromPalmOilN,
        this.ingredientsThatMayBeFromPalmOilTags,
        this.ingredientsWithSpecifiedPercentN,
        this.ingredientsWithSpecifiedPercentSum,
        this.ingredientsWithUnspecifiedPercentN,
        this.ingredientsWithUnspecifiedPercentSum,
        this.ingredientsWithoutCiqualCodes,
        this.ingredientsWithoutCiqualCodesN,
        this.interfaceVersionCreated,
        this.interfaceVersionModified,
        this.knownIngredientsN,
        this.labels,
        this.labelsHierarchy,
        this.labelsLc,
        this.labelsOld,
        this.labelsTags,
        this.lang,
        this.languages,
        this.languagesCodes,
        this.languagesHierarchy,
        this.languagesTags,
        this.lastEditDatesTags,
        this.lastEditor,
        this.lastImageDatesTags,
        this.lastImageT,
        this.lastModifiedBy,
        this.lastModifiedT,
        this.lastUpdatedT,
        this.lc,
        this.link,
        this.mainCountriesTags,
        this.manufacturingPlaces,
        this.manufacturingPlacesTags,
        this.maxImgid,
        this.mineralsPrevTags,
        this.mineralsTags,
        this.miscTags,
        this.noNutritionData,
        this.novaGroup,
        this.novaGroupDebug,
        this.novaGroups,
        this.novaGroupsMarkers,
        this.novaGroupsTags,
        this.nucleotidesPrevTags,
        this.nucleotidesTags,
        this.nutrientLevels,
        this.nutrientLevelsTags,
        this.nutriments,
        this.nutrimentsEstimated,
        this.nutriscore,
        this.nutriscore2021Tags,
        this.nutriscore2023Tags,
        this.nutriscoreData,
        this.nutriscoreGrade,
        this.nutriscoreScore,
        this.nutriscoreScoreOpposite,
        this.nutriscoreTags,
        this.nutriscoreVersion,
        this.nutritionData,
        this.nutritionDataPer,
        this.nutritionDataPrepared,
        this.nutritionDataPreparedPer,
        this.nutritionGradeFr,
        this.nutritionGrades,
        this.nutritionGradesTags,
        this.nutritionScoreBeverage,
        this.nutritionScoreDebug,
        this.nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients,
        this.nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue,
        this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
        this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
        this.obsolete,
        this.obsoleteSinceDate,
        this.origins,
        this.originsHierarchy,
        this.originsLc,
        this.originsOld,
        this.originsTags,
        this.otherNutritionalSubstancesTags,
        this.packaging,
        this.packagingHierarchy,
        this.packagingLc,
        this.packagingMaterialsTags,
        this.packagingOld,
        this.packagingOldBeforeTaxonomization,
        this.packagingRecyclingTags,
        this.packagingShapesTags,
        this.packagingTags,
        this.packagingText,
        this.packagingTextFr,
        this.packagings,
        this.packagingsComplete,
        this.packagingsMaterials,
        this.packagingsN,
        this.photographersTags,
        this.pnnsGroups1,
        this.pnnsGroups1Tags,
        this.pnnsGroups2,
        this.pnnsGroups2Tags,
        this.popularityKey,
        this.popularityTags,
        this.productName,
        this.productNameEn,
        this.productNameFr,
        this.productQuantity,
        this.productQuantityUnit,
        this.purchasePlaces,
        this.purchasePlacesTags,
        this.quantity,
        this.removedCountriesTags,
        this.rev,
        this.scansN,
        this.selectedImages,
        this.servingSize,
        this.sortkey,
        this.states,
        this.statesHierarchy,
        this.statesTags,
        this.stores,
        this.storesTags,
        this.teams,
        this.teamsTags,
        this.traces,
        this.tracesFromIngredients,
        this.tracesFromUser,
        this.tracesHierarchy,
        this.tracesLc,
        this.tracesTags,
        this.uniqueScansN,
        this.unknownIngredientsN,
        this.unknownNutrientsTags,
        this.updateKey,
        this.url,
        this.vitaminsPrevTags,
        this.vitaminsTags,
        this.weighersTags,
        this.allergensImported,
        this.brandsImported,
        this.countriesImported,
        this.dataSourcesImported,
        this.editors,
        this.embCodes20141016,
        this.genericNameEn,
        this.ingredientsTextFrImported,
        this.lcImported,
        this.netWeightUnit,
        this.netWeightValue,
        this.nutritionDataPerImported,
        this.nutritionDataPreparedPerImported,
        this.nutritionGradeFrProducer,
        this.origin,
        this.originEn,
        this.originFr,
        this.otherNutritionalSubstancesPrevTags,
        this.owner,
        this.ownerFields,
        this.ownersTags,
        this.packagingTextEn,
        this.productNameFrImported,
        this.quantityImported,
        this.servingQuantity,
        this.servingQuantityUnit,
        this.sources,
        this.storesImported,
        this.completedT,
        this.ingredientsTextDebugTags,
        this.nutritionScoreWarningNoFiber,
        this.checkers,
        this.correctors,
        this.grades,
        this.informers,
        this.newAdditivesN,
        this.photographers,
        this.scores,
        this.specificIngredients,
        this.debugTags,
        this.carbonFootprintFromMeatOrFishDebug,
        this.checked,
        this.lastCheckDatesTags,
        this.lastCheckedT,
        this.lastChecker,
        this.nutritionScoreWarningFruitsVegetablesNutsEstimate,
        this.packagingsMaterialsMain,
        this.weightersTags,
        this.genericNameDe,
        this.ingredientsTextDe,
        this.ingredientsTextDeOcr1574621815,
        this.ingredientsTextDeOcr1574621815Result,
        this.ingredientsTextFi,
        this.ingredientsTextWithAllergensDe,
        this.ingredientsTextWithAllergensFi,
        this.originDe,
        this.packagingTextDe,
        this.packagingTextFi,
        this.productNameDe,
        this.productNameFi,
        this.abbreviatedProductName,
        this.abbreviatedProductNameFr,
        this.abbreviatedProductNameFrImported,
        this.abbreviatedProductNameImported,
        this.categoriesImported,
        this.conservationConditions,
        this.conservationConditionsFr,
        this.conservationConditionsFrImported,
        this.customerService,
        this.customerServiceFr,
        this.customerServiceFrImported,
        this.genericNameFrImported,
        this.langImported,
        this.nutriscoreGradeProducer,
        this.nutriscoreGradeProducerImported,
        this.obsoleteImported,
        this.servingSizeImported,
        this.sourcesFields,
        this.tracesImported,
        this.ingredientsTextFrOcr1546446890,
        this.ingredientsTextFrOcr1546446890Result,
        this.novaGroupError,
        this.producerVersionId,
        this.conservationConditionsEs,
        this.conservationConditionsEsImported,
        this.customerServiceEs,
        this.customerServiceEsImported,
        this.genericNameEs,
        this.genericNameEsImported,
        this.ingredientsTextEs,
        this.ingredientsTextEsImported,
        this.ingredientsTextWithAllergensEs,
        this.labelsImported,
        this.originEs,
        this.ownerImported,
        this.packagingTextEs,
        this.producerProductId,
        this.producerProductIdImported,
        this.productNameEs,
        this.productNameEsImported,
        this.producer,
        this.producerFr,
        this.embCodesImported,
        this.preparation,
        this.preparationFr,
        this.preparationFrImported,
        this.originFrImported,
        this.otherInformation,
        this.otherInformationFr,
        this.producerFrImported,
        this.countriesBeforescanbot,
        this.expirationDateDebugTags,
        this.genericNameEnDebugTags,
        this.genericNameFrDebugTags,
        this.genericNameIt,
        this.genericNameItDebugTags,
        this.ingredientsTextFrDebugTags,
        this.ingredientsTextIt,
        this.ingredientsTextItDebugTags,
        this.ingredientsTextWithAllergensIt,
        this.langDebugTags,
        this.linkDebugTags,
        this.productNameEnDebugTags,
        this.productNameFrDebugTags,
        this.productNameIt,
        this.productNameItDebugTags,
        this.purchasePlacesDebugTags,
        this.servingSizeDebugTags,
        this.storesDebugTags,
        this.tracesDebugTags,
        this.genericNameCs,
        this.genericNameNl,
        this.ingredientsTextCs,
        this.ingredientsTextFrOcr1548773315,
        this.ingredientsTextFrOcr1548773315Result,
        this.ingredientsTextNl,
        this.ingredientsTextWithAllergensCs,
        this.ingredientsTextWithAllergensNl,
        this.originCs,
        this.originIt,
        this.originNl,
        this.packagingTextCs,
        this.packagingTextIt,
        this.packagingTextNl,
        this.productNameCs,
        this.productNameNl,
        this.allergensDebugTags,
        this.brandsDebugTags,
        this.countriesDebugTags,
        this.embCodesDebugTags,
        this.manufacturingPlacesDebugTags,
        this.nutritionDataPreparedPerDebugTags,
        this.quantityDebugTags,
        this.ingredientsTextFrOcr1549708244,
        this.ingredientsTextFrOcr1549708244Result,
        this.ingredientsTextFrOcr1562673306,
        this.ingredientsTextFrOcr1562673306Result,
        this.productNameDebugTags,
        this.ingredientsTextFrOcr1540905347,
        this.ingredientsTextFrOcr1540905347Result,
        this.conservationConditionsNl,
        this.conservationConditionsNlImported,
        this.customerServiceNl,
        this.customerServiceNlImported,
        this.genericNameNlImported,
        this.ingredientsTextNlImported,
        this.productNameNlImported,
        this.genericNameBg,
        this.genericNameRo,
        this.ingredientsTextBg,
        this.ingredientsTextRo,
        this.ingredientsTextWithAllergensBg,
        this.ingredientsTextWithAllergensRo,
        this.nutritionScoreWarningNoFruitsVegetablesNuts,
        this.originBg,
        this.originRo,
        this.packagingTextBg,
        this.packagingTextRo,
        this.productNameBg,
        this.productNameRo,
        this.ingredientsTextDeOcr1566234809,
        this.ingredientsTextDeOcr1566234809Result,
        this.ingredientsTextFrOcr1566234633,
        this.ingredientsTextFrOcr1566234633Result,
        this.ingredientsTextFrOcr1544199794,
        this.ingredientsTextFrOcr1544199794Result,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        keywords: json["_keywords"] == null ? [] : List<String>.from(json["_keywords"]!.map((x) => x)),
        addedCountriesTags: json["added_countries_tags"] == null ? [] : List<dynamic>.from(json["added_countries_tags"]!.map((x) => x)),
        additivesDebugTags: json["additives_debug_tags"] == null ? [] : List<String>.from(json["additives_debug_tags"]!.map((x) => x)),
        additivesN: json["additives_n"],
        additivesOldN: json["additives_old_n"],
        additivesOldTags: json["additives_old_tags"] == null ? [] : List<String>.from(json["additives_old_tags"]!.map((x) => x)),
        additivesOriginalTags: json["additives_original_tags"] == null ? [] : List<String>.from(json["additives_original_tags"]!.map((x) => x)),
        additivesPrevOriginalTags: json["additives_prev_original_tags"] == null ? [] : List<String>.from(json["additives_prev_original_tags"]!.map((x) => x)),
        additivesTags: json["additives_tags"] == null ? [] : List<String>.from(json["additives_tags"]!.map((x) => x)),
        allergens: json["allergens"],
        allergensFromIngredients: json["allergens_from_ingredients"],
        allergensFromUser: json["allergens_from_user"],
        allergensHierarchy: json["allergens_hierarchy"] == null ? [] : List<String>.from(json["allergens_hierarchy"]!.map((x) => x)),
        allergensLc: allergensLcValues.map[json["allergens_lc"]]!,
        allergensTags: json["allergens_tags"] == null ? [] : List<String>.from(json["allergens_tags"]!.map((x) => x)),
        aminoAcidsPrevTags: json["amino_acids_prev_tags"] == null ? [] : List<dynamic>.from(json["amino_acids_prev_tags"]!.map((x) => x)),
        aminoAcidsTags: json["amino_acids_tags"] == null ? [] : List<dynamic>.from(json["amino_acids_tags"]!.map((x) => x)),
        brands: json["brands"],
        brandsTags: json["brands_tags"] == null ? [] : List<String>.from(json["brands_tags"]!.map((x) => x)),
        carbonFootprintFromKnownIngredientsDebug: json["carbon_footprint_from_known_ingredients_debug"],
        carbonFootprintPercentOfKnownIngredients: json["carbon_footprint_percent_of_known_ingredients"]?.toDouble(),
        categories: json["categories"],
        categoriesHierarchy: json["categories_hierarchy"] == null ? [] : List<String>.from(json["categories_hierarchy"]!.map((x) => x)),
        categoriesLc: allergensLcValues.map[json["categories_lc"]]!,
        categoriesOld: json["categories_old"],
        categoriesProperties: json["categories_properties"] == null ? null : CategoriesProperties.fromJson(json["categories_properties"]),
        categoriesPropertiesTags: json["categories_properties_tags"] == null ? [] : List<String>.from(json["categories_properties_tags"]!.map((x) => x)),
        categoriesTags: json["categories_tags"] == null ? [] : List<String>.from(json["categories_tags"]!.map((x) => x)),
        categoryProperties: json["category_properties"] == null ? null : CategoryProperties.fromJson(json["category_properties"]),
        checkersTags: json["checkers_tags"] == null ? [] : List<String>.from(json["checkers_tags"]!.map((x) => x)),
        ciqualFoodNameTags: json["ciqual_food_name_tags"] == null ? [] : List<String>.from(json["ciqual_food_name_tags"]!.map((x) => x)),
        citiesTags: json["cities_tags"] == null ? [] : List<String>.from(json["cities_tags"]!.map((x) => x)),
        code: json["code"],
        codesTags: json["codes_tags"] == null ? [] : List<String>.from(json["codes_tags"]!.map((x) => x)),
        comparedToCategory: json["compared_to_category"],
        complete: json["complete"],
        completeness: json["completeness"]?.toDouble(),
        correctorsTags: json["correctors_tags"] == null ? [] : List<String>.from(json["correctors_tags"]!.map((x) => x)),
        countries: json["countries"],
        countriesHierarchy: json["countries_hierarchy"] == null ? [] : List<String>.from(json["countries_hierarchy"]!.map((x) => x)),
        countriesLc: allergensLcValues.map[json["countries_lc"]]!,
        countriesTags: json["countries_tags"] == null ? [] : List<String>.from(json["countries_tags"]!.map((x) => x)),
        createdT: json["created_t"],
        creator: json["creator"],
        dataQualityBugsTags: json["data_quality_bugs_tags"] == null ? [] : List<dynamic>.from(json["data_quality_bugs_tags"]!.map((x) => x)),
        dataQualityErrorsTags: json["data_quality_errors_tags"] == null ? [] : List<String>.from(json["data_quality_errors_tags"]!.map((x) => x)),
        dataQualityInfoTags: json["data_quality_info_tags"] == null ? [] : List<String>.from(json["data_quality_info_tags"]!.map((x) => x)),
        dataQualityTags: json["data_quality_tags"] == null ? [] : List<String>.from(json["data_quality_tags"]!.map((x) => x)),
        dataQualityWarningsTags: json["data_quality_warnings_tags"] == null ? [] : List<String>.from(json["data_quality_warnings_tags"]!.map((x) => x)),
        dataSources: json["data_sources"],
        dataSourcesTags: json["data_sources_tags"] == null ? [] : List<String>.from(json["data_sources_tags"]!.map((x) => x)),
        debugParamSortedLangs: json["debug_param_sorted_langs"] == null ? [] : List<String>.from(json["debug_param_sorted_langs"]!.map((x) => x)),
        ecoscoreData: json["ecoscore_data"] == null ? null : EcoscoreData.fromJson(json["ecoscore_data"]),
        ecoscoreExtendedData: json["ecoscore_extended_data"] == null ? null : EcoscoreExtendedData.fromJson(json["ecoscore_extended_data"]),
        ecoscoreExtendedDataVersion: json["ecoscore_extended_data_version"],
        ecoscoreGrade: ecoscoreGradeValues.map[json["ecoscore_grade"]]!,
        ecoscoreScore: json["ecoscore_score"],
        ecoscoreTags: json["ecoscore_tags"] == null ? [] : List<EcoscoreGrade>.from(json["ecoscore_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        editorsTags: json["editors_tags"] == null ? [] : List<String>.from(json["editors_tags"]!.map((x) => x)),
        embCodes: json["emb_codes"],
        embCodesOrig: json["emb_codes_orig"],
        embCodesTags: json["emb_codes_tags"] == null ? [] : List<String>.from(json["emb_codes_tags"]!.map((x) => x)),
        entryDatesTags: json["entry_dates_tags"] == null ? [] : List<String>.from(json["entry_dates_tags"]!.map((x) => x)),
        environmentImpactLevel: json["environment_impact_level"],
        environmentImpactLevelTags: json["environment_impact_level_tags"] == null ? [] : List<dynamic>.from(json["environment_impact_level_tags"]!.map((x) => x)),
        expirationDate: json["expiration_date"],
        foodGroups: foodGroupsValues.map[json["food_groups"]]!,
        foodGroupsTags: json["food_groups_tags"] == null ? [] : List<FoodGroups>.from(json["food_groups_tags"]!.map((x) => foodGroupsValues.map[x]!)),
        forestFootprintData: json["forest_footprint_data"] == null ? null : ForestFootprintData.fromJson(json["forest_footprint_data"]),
        fruitsVegetablesNuts100GEstimate: json["fruits-vegetables-nuts_100g_estimate"],
        genericName: json["generic_name"],
        genericNameFr: json["generic_name_fr"],
        productId: json["id"],
        imageFrontSmallUrl: json["image_front_small_url"],
        imageFrontThumbUrl: json["image_front_thumb_url"],
        imageFrontUrl: json["image_front_url"],
        imageSmallUrl: json["image_small_url"],
        imageThumbUrl: json["image_thumb_url"],
        imageUrl: json["image_url"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        informersTags: json["informers_tags"] == null ? [] : List<String>.from(json["informers_tags"]!.map((x) => x)),
        ingredients: json["ingredients"] == null ? [] : List<ProductIngredient>.from(json["ingredients"]!.map((x) => ProductIngredient.fromJson(x))),
        ingredientsAnalysis: json["ingredients_analysis"] == null ? null : IngredientsAnalysis.fromJson(json["ingredients_analysis"]),
        ingredientsAnalysisTags: json["ingredients_analysis_tags"] == null ? [] : List<IngredientsAnalysisTag>.from(json["ingredients_analysis_tags"]!.map((x) => ingredientsAnalysisTagValues.map[x]!)),
        ingredientsDebug: json["ingredients_debug"] == null ? [] : List<String?>.from(json["ingredients_debug"]!.map((x) => x)),
        ingredientsFromOrThatMayBeFromPalmOilN: json["ingredients_from_or_that_may_be_from_palm_oil_n"],
        ingredientsFromPalmOilN: json["ingredients_from_palm_oil_n"],
        ingredientsFromPalmOilTags: json["ingredients_from_palm_oil_tags"] == null ? [] : List<dynamic>.from(json["ingredients_from_palm_oil_tags"]!.map((x) => x)),
        ingredientsHierarchy: json["ingredients_hierarchy"] == null ? [] : List<String>.from(json["ingredients_hierarchy"]!.map((x) => x)),
        ingredientsIdsDebug: json["ingredients_ids_debug"] == null ? [] : List<String>.from(json["ingredients_ids_debug"]!.map((x) => x)),
        ingredientsLc: allergensLcValues.map[json["ingredients_lc"]]!,
        ingredientsN: json["ingredients_n"],
        ingredientsNTags: json["ingredients_n_tags"] == null ? [] : List<String>.from(json["ingredients_n_tags"]!.map((x) => x)),
        ingredientsNonNutritiveSweetenersN: json["ingredients_non_nutritive_sweeteners_n"],
        ingredientsOriginalTags: json["ingredients_original_tags"] == null ? [] : List<String>.from(json["ingredients_original_tags"]!.map((x) => x)),
        ingredientsPercentAnalysis: json["ingredients_percent_analysis"],
        ingredientsSweetenersN: json["ingredients_sweeteners_n"],
        ingredientsTags: json["ingredients_tags"] == null ? [] : List<String>.from(json["ingredients_tags"]!.map((x) => x)),
        ingredientsText: json["ingredients_text"],
        ingredientsTextDebug: json["ingredients_text_debug"],
        ingredientsTextEn: json["ingredients_text_en"],
        ingredientsTextFr: json["ingredients_text_fr"],
        ingredientsTextWithAllergens: json["ingredients_text_with_allergens"],
        ingredientsTextWithAllergensEn: json["ingredients_text_with_allergens_en"],
        ingredientsTextWithAllergensFr: json["ingredients_text_with_allergens_fr"],
        ingredientsThatMayBeFromPalmOilN: json["ingredients_that_may_be_from_palm_oil_n"],
        ingredientsThatMayBeFromPalmOilTags: json["ingredients_that_may_be_from_palm_oil_tags"] == null ? [] : List<String>.from(json["ingredients_that_may_be_from_palm_oil_tags"]!.map((x) => x)),
        ingredientsWithSpecifiedPercentN: json["ingredients_with_specified_percent_n"],
        ingredientsWithSpecifiedPercentSum: json["ingredients_with_specified_percent_sum"]?.toDouble(),
        ingredientsWithUnspecifiedPercentN: json["ingredients_with_unspecified_percent_n"],
        ingredientsWithUnspecifiedPercentSum: json["ingredients_with_unspecified_percent_sum"]?.toDouble(),
        ingredientsWithoutCiqualCodes: json["ingredients_without_ciqual_codes"] == null ? [] : List<String>.from(json["ingredients_without_ciqual_codes"]!.map((x) => x)),
        ingredientsWithoutCiqualCodesN: json["ingredients_without_ciqual_codes_n"],
        interfaceVersionCreated: json["interface_version_created"],
        interfaceVersionModified: json["interface_version_modified"],
        knownIngredientsN: json["known_ingredients_n"],
        labels: json["labels"],
        labelsHierarchy: json["labels_hierarchy"] == null ? [] : List<String>.from(json["labels_hierarchy"]!.map((x) => x)),
        labelsLc: allergensLcValues.map[json["labels_lc"]]!,
        labelsOld: json["labels_old"],
        labelsTags: json["labels_tags"] == null ? [] : List<String>.from(json["labels_tags"]!.map((x) => x)),
        lang: allergensLcValues.map[json["lang"]]!,
        languages: Map.from(json["languages"]!).map((k, v) => MapEntry<String, int>(k, v)),
        languagesCodes: json["languages_codes"] == null ? null : LanguagesCodes.fromJson(json["languages_codes"]),
        languagesHierarchy: json["languages_hierarchy"] == null ? [] : List<String>.from(json["languages_hierarchy"]!.map((x) => x)),
        languagesTags: json["languages_tags"] == null ? [] : List<String>.from(json["languages_tags"]!.map((x) => x)),
        lastEditDatesTags: json["last_edit_dates_tags"] == null ? [] : List<String>.from(json["last_edit_dates_tags"]!.map((x) => x)),
        lastEditor: json["last_editor"],
        lastImageDatesTags: json["last_image_dates_tags"] == null ? [] : List<String>.from(json["last_image_dates_tags"]!.map((x) => x)),
        lastImageT: json["last_image_t"],
        lastModifiedBy: json["last_modified_by"],
        lastModifiedT: json["last_modified_t"],
        lastUpdatedT: json["last_updated_t"],
        lc: allergensLcValues.map[json["lc"]]!,
        link: json["link"],
        mainCountriesTags: json["main_countries_tags"] == null ? [] : List<dynamic>.from(json["main_countries_tags"]!.map((x) => x)),
        manufacturingPlaces: json["manufacturing_places"],
        manufacturingPlacesTags: json["manufacturing_places_tags"] == null ? [] : List<String>.from(json["manufacturing_places_tags"]!.map((x) => x)),
        maxImgid: json["max_imgid"],
        mineralsPrevTags: json["minerals_prev_tags"] == null ? [] : List<String>.from(json["minerals_prev_tags"]!.map((x) => x)),
        mineralsTags: json["minerals_tags"] == null ? [] : List<String>.from(json["minerals_tags"]!.map((x) => x)),
        miscTags: json["misc_tags"] == null ? [] : List<String>.from(json["misc_tags"]!.map((x) => x)),
        noNutritionData: checkedValues.map[json["no_nutrition_data"]]!,
        novaGroup: json["nova_group"],
        novaGroupDebug: novaGroupDebugValues.map[json["nova_group_debug"]]!,
        novaGroups: json["nova_groups"],
        novaGroupsMarkers: Map.from(json["nova_groups_markers"]!).map((k, v) => MapEntry<String, List<List<String>>>(k, List<List<String>>.from(v.map((x) => List<String>.from(x.map((x) => x)))))),
        novaGroupsTags: json["nova_groups_tags"] == null ? [] : List<NovaGroupsTag>.from(json["nova_groups_tags"]!.map((x) => novaGroupsTagValues.map[x]!)),
        nucleotidesPrevTags: json["nucleotides_prev_tags"] == null ? [] : List<dynamic>.from(json["nucleotides_prev_tags"]!.map((x) => x)),
        nucleotidesTags: json["nucleotides_tags"] == null ? [] : List<dynamic>.from(json["nucleotides_tags"]!.map((x) => x)),
        nutrientLevels: json["nutrient_levels"] == null ? null : NutrientLevels.fromJson(json["nutrient_levels"]),
        nutrientLevelsTags: json["nutrient_levels_tags"] == null ? [] : List<NutrientLevelsTag>.from(json["nutrient_levels_tags"]!.map((x) => nutrientLevelsTagValues.map[x]!)),
        nutriments: json["nutriments"] == null ? null : Nutriments.fromJson(json["nutriments"]),
        nutrimentsEstimated: Map.from(json["nutriments_estimated"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        nutriscore: Map.from(json["nutriscore"]!).map((k, v) => MapEntry<String, Nutriscore>(k, Nutriscore.fromJson(v))),
        nutriscore2021Tags: json["nutriscore_2021_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutriscore_2021_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutriscore2023Tags: json["nutriscore_2023_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutriscore_2023_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutriscoreData: json["nutriscore_data"] == null ? null : NutriscoreData.fromJson(json["nutriscore_data"]),
        nutriscoreGrade: ecoscoreGradeValues.map[json["nutriscore_grade"]]!,
        nutriscoreScore: json["nutriscore_score"],
        nutriscoreScoreOpposite: json["nutriscore_score_opposite"],
        nutriscoreTags: json["nutriscore_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutriscore_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutriscoreVersion: json["nutriscore_version"],
        nutritionData: checkedValues.map[json["nutrition_data"]]!,
        nutritionDataPer: nutritionDataPValues.map[json["nutrition_data_per"]]!,
        nutritionDataPrepared: json["nutrition_data_prepared"],
        nutritionDataPreparedPer: nutritionDataPValues.map[json["nutrition_data_prepared_per"]]!,
        nutritionGradeFr: ecoscoreGradeValues.map[json["nutrition_grade_fr"]]!,
        nutritionGrades: ecoscoreGradeValues.map[json["nutrition_grades"]]!,
        nutritionGradesTags: json["nutrition_grades_tags"] == null ? [] : List<EcoscoreGrade>.from(json["nutrition_grades_tags"]!.map((x) => ecoscoreGradeValues.map[x]!)),
        nutritionScoreBeverage: json["nutrition_score_beverage"],
        nutritionScoreDebug: json["nutrition_score_debug"],
        nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients: json["nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients"],
        nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue: json["nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients_value"]?.toDouble(),
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients: json["nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients"],
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: json["nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value"]?.toDouble(),
        obsolete: json["obsolete"],
        obsoleteSinceDate: json["obsolete_since_date"],
        origins: json["origins"],
        originsHierarchy: json["origins_hierarchy"] == null ? [] : List<String>.from(json["origins_hierarchy"]!.map((x) => x)),
        originsLc: originsLcValues.map[json["origins_lc"]]!,
        originsOld: json["origins_old"],
        originsTags: json["origins_tags"] == null ? [] : List<String>.from(json["origins_tags"]!.map((x) => x)),
        otherNutritionalSubstancesTags: json["other_nutritional_substances_tags"] == null ? [] : List<dynamic>.from(json["other_nutritional_substances_tags"]!.map((x) => x)),
        packaging: json["packaging"],
        packagingHierarchy: json["packaging_hierarchy"] == null ? [] : List<String>.from(json["packaging_hierarchy"]!.map((x) => x)),
        packagingLc: allergensLcValues.map[json["packaging_lc"]]!,
        packagingMaterialsTags: json["packaging_materials_tags"] == null ? [] : List<String>.from(json["packaging_materials_tags"]!.map((x) => x)),
        packagingOld: json["packaging_old"],
        packagingOldBeforeTaxonomization: json["packaging_old_before_taxonomization"],
        packagingRecyclingTags: json["packaging_recycling_tags"] == null ? [] : List<PackagingRecyclingTag>.from(json["packaging_recycling_tags"]!.map((x) => packagingRecyclingTagValues.map[x]!)),
        packagingShapesTags: json["packaging_shapes_tags"] == null ? [] : List<String>.from(json["packaging_shapes_tags"]!.map((x) => x)),
        packagingTags: json["packaging_tags"] == null ? [] : List<String>.from(json["packaging_tags"]!.map((x) => x)),
        packagingText: json["packaging_text"],
        packagingTextFr: json["packaging_text_fr"],
        packagings: json["packagings"] == null ? [] : List<PackagingElement>.from(json["packagings"]!.map((x) => PackagingElement.fromJson(x))),
        packagingsComplete: json["packagings_complete"],
        packagingsMaterials: json["packagings_materials"] == null ? null : PackagingsMaterials.fromJson(json["packagings_materials"]),
        packagingsN: json["packagings_n"],
        photographersTags: json["photographers_tags"] == null ? [] : List<String>.from(json["photographers_tags"]!.map((x) => x)),
        pnnsGroups1: pnnsGroups1Values.map[json["pnns_groups_1"]]!,
        pnnsGroups1Tags: json["pnns_groups_1_tags"] == null ? [] : List<PnnsGroups1Tag>.from(json["pnns_groups_1_tags"]!.map((x) => pnnsGroups1TagValues.map[x]!)),
        pnnsGroups2: pnnsGroups2Values.map[json["pnns_groups_2"]]!,
        pnnsGroups2Tags: json["pnns_groups_2_tags"] == null ? [] : List<PnnsGroups2Tag>.from(json["pnns_groups_2_tags"]!.map((x) => pnnsGroups2TagValues.map[x]!)),
        popularityKey: json["popularity_key"],
        popularityTags: json["popularity_tags"] == null ? [] : List<String>.from(json["popularity_tags"]!.map((x) => x)),
        productName: json["product_name"],
        productNameEn: json["product_name_en"],
        productNameFr: json["product_name_fr"],
        productQuantity: json["product_quantity"],
        productQuantityUnit: unitValues.map[json["product_quantity_unit"]]!,
        purchasePlaces: json["purchase_places"],
        purchasePlacesTags: json["purchase_places_tags"] == null ? [] : List<String>.from(json["purchase_places_tags"]!.map((x) => x)),
        quantity: json["quantity"],
        removedCountriesTags: json["removed_countries_tags"] == null ? [] : List<dynamic>.from(json["removed_countries_tags"]!.map((x) => x)),
        rev: json["rev"],
        scansN: json["scans_n"],
        selectedImages: json["selected_images"] == null ? null : SelectedImages.fromJson(json["selected_images"]),
        servingSize: json["serving_size"],
        sortkey: json["sortkey"],
        states: json["states"],
        statesHierarchy: json["states_hierarchy"] == null ? [] : List<String>.from(json["states_hierarchy"]!.map((x) => x)),
        statesTags: json["states_tags"] == null ? [] : List<String>.from(json["states_tags"]!.map((x) => x)),
        stores: json["stores"],
        storesTags: json["stores_tags"] == null ? [] : List<String>.from(json["stores_tags"]!.map((x) => x)),
        teams: json["teams"],
        teamsTags: json["teams_tags"] == null ? [] : List<String>.from(json["teams_tags"]!.map((x) => x)),
        traces: json["traces"],
        tracesFromIngredients: json["traces_from_ingredients"],
        tracesFromUser: json["traces_from_user"],
        tracesHierarchy: json["traces_hierarchy"] == null ? [] : List<String>.from(json["traces_hierarchy"]!.map((x) => x)),
        tracesLc: allergensLcValues.map[json["traces_lc"]]!,
        tracesTags: json["traces_tags"] == null ? [] : List<String>.from(json["traces_tags"]!.map((x) => x)),
        uniqueScansN: json["unique_scans_n"],
        unknownIngredientsN: json["unknown_ingredients_n"],
        unknownNutrientsTags: json["unknown_nutrients_tags"] == null ? [] : List<String>.from(json["unknown_nutrients_tags"]!.map((x) => x)),
        updateKey: json["update_key"],
        url: json["url"],
        vitaminsPrevTags: json["vitamins_prev_tags"] == null ? [] : List<String>.from(json["vitamins_prev_tags"]!.map((x) => x)),
        vitaminsTags: json["vitamins_tags"] == null ? [] : List<String>.from(json["vitamins_tags"]!.map((x) => x)),
        weighersTags: json["weighers_tags"] == null ? [] : List<String>.from(json["weighers_tags"]!.map((x) => x)),
        allergensImported: json["allergens_imported"],
        brandsImported: json["brands_imported"],
        countriesImported: countriesImportedValues.map[json["countries_imported"]]!,
        dataSourcesImported: json["data_sources_imported"],
        editors: json["editors"] == null ? [] : List<String>.from(json["editors"]!.map((x) => x)),
        embCodes20141016: json["emb_codes_20141016"],
        genericNameEn: genericNameEnValues.map[json["generic_name_en"]]!,
        ingredientsTextFrImported: json["ingredients_text_fr_imported"],
        lcImported: allergensLcValues.map[json["lc_imported"]]!,
        netWeightUnit: unitValues.map[json["net_weight_unit"]]!,
        netWeightValue: json["net_weight_value"],
        nutritionDataPerImported: nutritionDataPValues.map[json["nutrition_data_per_imported"]]!,
        nutritionDataPreparedPerImported: nutritionDataPValues.map[json["nutrition_data_prepared_per_imported"]]!,
        nutritionGradeFrProducer: ecoscoreGradeValues.map[json["nutrition_grade_fr_producer"]]!,
        origin: json["origin"],
        originEn: json["origin_en"],
        originFr: json["origin_fr"],
        otherNutritionalSubstancesPrevTags: json["other_nutritional_substances_prev_tags"] == null ? [] : List<dynamic>.from(json["other_nutritional_substances_prev_tags"]!.map((x) => x)),
        owner: ownerValues.map[json["owner"]]!,
        ownerFields: Map.from(json["owner_fields"]!).map((k, v) => MapEntry<String, int>(k, v)),
        ownersTags: ownerValues.map[json["owners_tags"]]!,
        packagingTextEn: packagingTextEnValues.map[json["packaging_text_en"]]!,
        productNameFrImported: json["product_name_fr_imported"],
        quantityImported: json["quantity_imported"],
        servingQuantity: json["serving_quantity"],
        servingQuantityUnit: unitValues.map[json["serving_quantity_unit"]]!,
        sources: json["sources"] == null ? [] : List<Source>.from(json["sources"]!.map((x) => Source.fromJson(x))),
        storesImported: json["stores_imported"],
        completedT: json["completed_t"],
        ingredientsTextDebugTags: json["ingredients_text_debug_tags"] == null ? [] : List<dynamic>.from(json["ingredients_text_debug_tags"]!.map((x) => x)),
        nutritionScoreWarningNoFiber: json["nutrition_score_warning_no_fiber"],
        checkers: json["checkers"] == null ? [] : List<dynamic>.from(json["checkers"]!.map((x) => x)),
        correctors: json["correctors"] == null ? [] : List<String>.from(json["correctors"]!.map((x) => x)),
        grades: json["grades"] == null ? null : Grades.fromJson(json["grades"]),
        informers: json["informers"] == null ? [] : List<String>.from(json["informers"]!.map((x) => x)),
        newAdditivesN: json["new_additives_n"],
        photographers: json["photographers"] == null ? [] : List<String>.from(json["photographers"]!.map((x) => x)),
        scores: json["scores"] == null ? null : Grades.fromJson(json["scores"]),
        specificIngredients: json["specific_ingredients"] == null ? [] : List<SpecificIngredient>.from(json["specific_ingredients"]!.map((x) => SpecificIngredient.fromJson(x))),
        debugTags: json["debug_tags"] == null ? [] : List<String>.from(json["debug_tags"]!.map((x) => x)),
        carbonFootprintFromMeatOrFishDebug: json["carbon_footprint_from_meat_or_fish_debug"],
        checked: checkedValues.map[json["checked"]]!,
        lastCheckDatesTags: json["last_check_dates_tags"] == null ? [] : List<String>.from(json["last_check_dates_tags"]!.map((x) => x)),
        lastCheckedT: json["last_checked_t"],
        lastChecker: json["last_checker"],
        nutritionScoreWarningFruitsVegetablesNutsEstimate: json["nutrition_score_warning_fruits_vegetables_nuts_estimate"],
        packagingsMaterialsMain: json["packagings_materials_main"],
        weightersTags: json["weighters_tags"] == null ? [] : List<dynamic>.from(json["weighters_tags"]!.map((x) => x)),
        genericNameDe: json["generic_name_de"],
        ingredientsTextDe: json["ingredients_text_de"],
        ingredientsTextDeOcr1574621815: json["ingredients_text_de_ocr_1574621815"],
        ingredientsTextDeOcr1574621815Result: json["ingredients_text_de_ocr_1574621815_result"],
        ingredientsTextFi: json["ingredients_text_fi"],
        ingredientsTextWithAllergensDe: json["ingredients_text_with_allergens_de"],
        ingredientsTextWithAllergensFi: json["ingredients_text_with_allergens_fi"],
        originDe: json["origin_de"],
        packagingTextDe: json["packaging_text_de"],
        packagingTextFi: json["packaging_text_fi"],
        productNameDe: json["product_name_de"],
        productNameFi: json["product_name_fi"],
        abbreviatedProductName: json["abbreviated_product_name"],
        abbreviatedProductNameFr: json["abbreviated_product_name_fr"],
        abbreviatedProductNameFrImported: json["abbreviated_product_name_fr_imported"],
        abbreviatedProductNameImported: json["abbreviated_product_name_imported"],
        categoriesImported: json["categories_imported"],
        conservationConditions: json["conservation_conditions"],
        conservationConditionsFr: json["conservation_conditions_fr"],
        conservationConditionsFrImported: json["conservation_conditions_fr_imported"],
        customerService: json["customer_service"],
        customerServiceFr: json["customer_service_fr"],
        customerServiceFrImported: json["customer_service_fr_imported"],
        genericNameFrImported: json["generic_name_fr_imported"],
        langImported: allergensLcValues.map[json["lang_imported"]]!,
        nutriscoreGradeProducer: json["nutriscore_grade_producer"],
        nutriscoreGradeProducerImported: json["nutriscore_grade_producer_imported"],
        obsoleteImported: json["obsolete_imported"],
        servingSizeImported: json["serving_size_imported"],
        sourcesFields: json["sources_fields"] == null ? null : SourcesFields.fromJson(json["sources_fields"]),
        tracesImported: json["traces_imported"],
        ingredientsTextFrOcr1546446890: json["ingredients_text_fr_ocr_1546446890"],
        ingredientsTextFrOcr1546446890Result: json["ingredients_text_fr_ocr_1546446890_result"],
        novaGroupError: json["nova_group_error"],
        producerVersionId: json["producer_version_id"],
        conservationConditionsEs: json["conservation_conditions_es"],
        conservationConditionsEsImported: json["conservation_conditions_es_imported"],
        customerServiceEs: json["customer_service_es"],
        customerServiceEsImported: json["customer_service_es_imported"],
        genericNameEs: json["generic_name_es"],
        genericNameEsImported: json["generic_name_es_imported"],
        ingredientsTextEs: json["ingredients_text_es"],
        ingredientsTextEsImported: json["ingredients_text_es_imported"],
        ingredientsTextWithAllergensEs: json["ingredients_text_with_allergens_es"],
        labelsImported: json["labels_imported"],
        originEs: json["origin_es"],
        ownerImported: ownerValues.map[json["owner_imported"]]!,
        packagingTextEs: json["packaging_text_es"],
        producerProductId: json["producer_product_id"],
        producerProductIdImported: json["producer_product_id_imported"],
        productNameEs: json["product_name_es"],
        productNameEsImported: json["product_name_es_imported"],
        producer: json["producer"],
        producerFr: json["producer_fr"],
        embCodesImported: json["emb_codes_imported"],
        preparation: json["preparation"],
        preparationFr: json["preparation_fr"],
        preparationFrImported: json["preparation_fr_imported"],
        originFrImported: json["origin_fr_imported"],
        otherInformation: json["other_information"],
        otherInformationFr: json["other_information_fr"],
        producerFrImported: json["producer_fr_imported"],
        countriesBeforescanbot: json["countries_beforescanbot"],
        expirationDateDebugTags: json["expiration_date_debug_tags"] == null ? [] : List<dynamic>.from(json["expiration_date_debug_tags"]!.map((x) => x)),
        genericNameEnDebugTags: json["generic_name_en_debug_tags"] == null ? [] : List<dynamic>.from(json["generic_name_en_debug_tags"]!.map((x) => x)),
        genericNameFrDebugTags: json["generic_name_fr_debug_tags"] == null ? [] : List<dynamic>.from(json["generic_name_fr_debug_tags"]!.map((x) => x)),
        genericNameIt: json["generic_name_it"],
        genericNameItDebugTags: json["generic_name_it_debug_tags"] == null ? [] : List<dynamic>.from(json["generic_name_it_debug_tags"]!.map((x) => x)),
        ingredientsTextFrDebugTags: json["ingredients_text_fr_debug_tags"] == null ? [] : List<dynamic>.from(json["ingredients_text_fr_debug_tags"]!.map((x) => x)),
        ingredientsTextIt: json["ingredients_text_it"],
        ingredientsTextItDebugTags: json["ingredients_text_it_debug_tags"] == null ? [] : List<dynamic>.from(json["ingredients_text_it_debug_tags"]!.map((x) => x)),
        ingredientsTextWithAllergensIt: json["ingredients_text_with_allergens_it"],
        langDebugTags: json["lang_debug_tags"] == null ? [] : List<dynamic>.from(json["lang_debug_tags"]!.map((x) => x)),
        linkDebugTags: json["link_debug_tags"] == null ? [] : List<dynamic>.from(json["link_debug_tags"]!.map((x) => x)),
        productNameEnDebugTags: json["product_name_en_debug_tags"] == null ? [] : List<dynamic>.from(json["product_name_en_debug_tags"]!.map((x) => x)),
        productNameFrDebugTags: json["product_name_fr_debug_tags"] == null ? [] : List<dynamic>.from(json["product_name_fr_debug_tags"]!.map((x) => x)),
        productNameIt: json["product_name_it"],
        productNameItDebugTags: json["product_name_it_debug_tags"] == null ? [] : List<dynamic>.from(json["product_name_it_debug_tags"]!.map((x) => x)),
        purchasePlacesDebugTags: json["purchase_places_debug_tags"] == null ? [] : List<dynamic>.from(json["purchase_places_debug_tags"]!.map((x) => x)),
        servingSizeDebugTags: json["serving_size_debug_tags"] == null ? [] : List<dynamic>.from(json["serving_size_debug_tags"]!.map((x) => x)),
        storesDebugTags: json["stores_debug_tags"] == null ? [] : List<dynamic>.from(json["stores_debug_tags"]!.map((x) => x)),
        tracesDebugTags: json["traces_debug_tags"] == null ? [] : List<dynamic>.from(json["traces_debug_tags"]!.map((x) => x)),
        genericNameCs: json["generic_name_cs"],
        genericNameNl: json["generic_name_nl"],
        ingredientsTextCs: json["ingredients_text_cs"],
        ingredientsTextFrOcr1548773315: json["ingredients_text_fr_ocr_1548773315"],
        ingredientsTextFrOcr1548773315Result: json["ingredients_text_fr_ocr_1548773315_result"],
        ingredientsTextNl: json["ingredients_text_nl"],
        ingredientsTextWithAllergensCs: json["ingredients_text_with_allergens_cs"],
        ingredientsTextWithAllergensNl: json["ingredients_text_with_allergens_nl"],
        originCs: json["origin_cs"],
        originIt: json["origin_it"],
        originNl: json["origin_nl"],
        packagingTextCs: json["packaging_text_cs"],
        packagingTextIt: json["packaging_text_it"],
        packagingTextNl: json["packaging_text_nl"],
        productNameCs: json["product_name_cs"],
        productNameNl: json["product_name_nl"],
        allergensDebugTags: json["allergens_debug_tags"] == null ? [] : List<dynamic>.from(json["allergens_debug_tags"]!.map((x) => x)),
        brandsDebugTags: json["brands_debug_tags"] == null ? [] : List<dynamic>.from(json["brands_debug_tags"]!.map((x) => x)),
        countriesDebugTags: json["countries_debug_tags"] == null ? [] : List<dynamic>.from(json["countries_debug_tags"]!.map((x) => x)),
        embCodesDebugTags: json["emb_codes_debug_tags"] == null ? [] : List<dynamic>.from(json["emb_codes_debug_tags"]!.map((x) => x)),
        manufacturingPlacesDebugTags: json["manufacturing_places_debug_tags"] == null ? [] : List<dynamic>.from(json["manufacturing_places_debug_tags"]!.map((x) => x)),
        nutritionDataPreparedPerDebugTags: json["nutrition_data_prepared_per_debug_tags"] == null ? [] : List<dynamic>.from(json["nutrition_data_prepared_per_debug_tags"]!.map((x) => x)),
        quantityDebugTags: json["quantity_debug_tags"] == null ? [] : List<dynamic>.from(json["quantity_debug_tags"]!.map((x) => x)),
        ingredientsTextFrOcr1549708244: json["ingredients_text_fr_ocr_1549708244"],
        ingredientsTextFrOcr1549708244Result: json["ingredients_text_fr_ocr_1549708244_result"],
        ingredientsTextFrOcr1562673306: json["ingredients_text_fr_ocr_1562673306"],
        ingredientsTextFrOcr1562673306Result: json["ingredients_text_fr_ocr_1562673306_result"],
        productNameDebugTags: json["product_name_debug_tags"] == null ? [] : List<dynamic>.from(json["product_name_debug_tags"]!.map((x) => x)),
        ingredientsTextFrOcr1540905347: json["ingredients_text_fr_ocr_1540905347"],
        ingredientsTextFrOcr1540905347Result: json["ingredients_text_fr_ocr_1540905347_result"],
        conservationConditionsNl: json["conservation_conditions_nl"],
        conservationConditionsNlImported: json["conservation_conditions_nl_imported"],
        customerServiceNl: json["customer_service_nl"],
        customerServiceNlImported: json["customer_service_nl_imported"],
        genericNameNlImported: json["generic_name_nl_imported"],
        ingredientsTextNlImported: json["ingredients_text_nl_imported"],
        productNameNlImported: json["product_name_nl_imported"],
        genericNameBg: json["generic_name_bg"],
        genericNameRo: json["generic_name_ro"],
        ingredientsTextBg: json["ingredients_text_bg"],
        ingredientsTextRo: json["ingredients_text_ro"],
        ingredientsTextWithAllergensBg: json["ingredients_text_with_allergens_bg"],
        ingredientsTextWithAllergensRo: json["ingredients_text_with_allergens_ro"],
        nutritionScoreWarningNoFruitsVegetablesNuts: json["nutrition_score_warning_no_fruits_vegetables_nuts"],
        originBg: json["origin_bg"],
        originRo: json["origin_ro"],
        packagingTextBg: json["packaging_text_bg"],
        packagingTextRo: json["packaging_text_ro"],
        productNameBg: json["product_name_bg"],
        productNameRo: json["product_name_ro"],
        ingredientsTextDeOcr1566234809: json["ingredients_text_de_ocr_1566234809"],
        ingredientsTextDeOcr1566234809Result: json["ingredients_text_de_ocr_1566234809_result"],
        ingredientsTextFrOcr1566234633: json["ingredients_text_fr_ocr_1566234633"],
        ingredientsTextFrOcr1566234633Result: json["ingredients_text_fr_ocr_1566234633_result"],
        ingredientsTextFrOcr1544199794: json["ingredients_text_fr_ocr_1544199794"],
        ingredientsTextFrOcr1544199794Result: json["ingredients_text_fr_ocr_1544199794_result"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "_keywords": keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "added_countries_tags": addedCountriesTags == null ? [] : List<dynamic>.from(addedCountriesTags!.map((x) => x)),
        "additives_debug_tags": additivesDebugTags == null ? [] : List<dynamic>.from(additivesDebugTags!.map((x) => x)),
        "additives_n": additivesN,
        "additives_old_n": additivesOldN,
        "additives_old_tags": additivesOldTags == null ? [] : List<dynamic>.from(additivesOldTags!.map((x) => x)),
        "additives_original_tags": additivesOriginalTags == null ? [] : List<dynamic>.from(additivesOriginalTags!.map((x) => x)),
        "additives_prev_original_tags": additivesPrevOriginalTags == null ? [] : List<dynamic>.from(additivesPrevOriginalTags!.map((x) => x)),
        "additives_tags": additivesTags == null ? [] : List<dynamic>.from(additivesTags!.map((x) => x)),
        "allergens": allergens,
        "allergens_from_ingredients": allergensFromIngredients,
        "allergens_from_user": allergensFromUser,
        "allergens_hierarchy": allergensHierarchy == null ? [] : List<dynamic>.from(allergensHierarchy!.map((x) => x)),
        "allergens_lc": allergensLcValues.reverse[allergensLc],
        "allergens_tags": allergensTags == null ? [] : List<dynamic>.from(allergensTags!.map((x) => x)),
        "amino_acids_prev_tags": aminoAcidsPrevTags == null ? [] : List<dynamic>.from(aminoAcidsPrevTags!.map((x) => x)),
        "amino_acids_tags": aminoAcidsTags == null ? [] : List<dynamic>.from(aminoAcidsTags!.map((x) => x)),
        "brands": brands,
        "brands_tags": brandsTags == null ? [] : List<dynamic>.from(brandsTags!.map((x) => x)),
        "carbon_footprint_from_known_ingredients_debug": carbonFootprintFromKnownIngredientsDebug,
        "carbon_footprint_percent_of_known_ingredients": carbonFootprintPercentOfKnownIngredients,
        "categories": categories,
        "categories_hierarchy": categoriesHierarchy == null ? [] : List<dynamic>.from(categoriesHierarchy!.map((x) => x)),
        "categories_lc": allergensLcValues.reverse[categoriesLc],
        "categories_old": categoriesOld,
        "categories_properties": categoriesProperties?.toJson(),
        "categories_properties_tags": categoriesPropertiesTags == null ? [] : List<dynamic>.from(categoriesPropertiesTags!.map((x) => x)),
        "categories_tags": categoriesTags == null ? [] : List<dynamic>.from(categoriesTags!.map((x) => x)),
        "category_properties": categoryProperties?.toJson(),
        "checkers_tags": checkersTags == null ? [] : List<dynamic>.from(checkersTags!.map((x) => x)),
        "ciqual_food_name_tags": ciqualFoodNameTags == null ? [] : List<dynamic>.from(ciqualFoodNameTags!.map((x) => x)),
        "cities_tags": citiesTags == null ? [] : List<dynamic>.from(citiesTags!.map((x) => x)),
        "code": code,
        "codes_tags": codesTags == null ? [] : List<dynamic>.from(codesTags!.map((x) => x)),
        "compared_to_category": comparedToCategory,
        "complete": complete,
        "completeness": completeness,
        "correctors_tags": correctorsTags == null ? [] : List<dynamic>.from(correctorsTags!.map((x) => x)),
        "countries": countries,
        "countries_hierarchy": countriesHierarchy == null ? [] : List<dynamic>.from(countriesHierarchy!.map((x) => x)),
        "countries_lc": allergensLcValues.reverse[countriesLc],
        "countries_tags": countriesTags == null ? [] : List<dynamic>.from(countriesTags!.map((x) => x)),
        "created_t": createdT,
        "creator": creator,
        "data_quality_bugs_tags": dataQualityBugsTags == null ? [] : List<dynamic>.from(dataQualityBugsTags!.map((x) => x)),
        "data_quality_errors_tags": dataQualityErrorsTags == null ? [] : List<dynamic>.from(dataQualityErrorsTags!.map((x) => x)),
        "data_quality_info_tags": dataQualityInfoTags == null ? [] : List<dynamic>.from(dataQualityInfoTags!.map((x) => x)),
        "data_quality_tags": dataQualityTags == null ? [] : List<dynamic>.from(dataQualityTags!.map((x) => x)),
        "data_quality_warnings_tags": dataQualityWarningsTags == null ? [] : List<dynamic>.from(dataQualityWarningsTags!.map((x) => x)),
        "data_sources": dataSources,
        "data_sources_tags": dataSourcesTags == null ? [] : List<dynamic>.from(dataSourcesTags!.map((x) => x)),
        "debug_param_sorted_langs": debugParamSortedLangs == null ? [] : List<dynamic>.from(debugParamSortedLangs!.map((x) => x)),
        "ecoscore_data": ecoscoreData?.toJson(),
        "ecoscore_extended_data": ecoscoreExtendedData?.toJson(),
        "ecoscore_extended_data_version": ecoscoreExtendedDataVersion,
        "ecoscore_grade": ecoscoreGradeValues.reverse[ecoscoreGrade],
        "ecoscore_score": ecoscoreScore,
        "ecoscore_tags": ecoscoreTags == null ? [] : List<dynamic>.from(ecoscoreTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "editors_tags": editorsTags == null ? [] : List<dynamic>.from(editorsTags!.map((x) => x)),
        "emb_codes": embCodes,
        "emb_codes_orig": embCodesOrig,
        "emb_codes_tags": embCodesTags == null ? [] : List<dynamic>.from(embCodesTags!.map((x) => x)),
        "entry_dates_tags": entryDatesTags == null ? [] : List<dynamic>.from(entryDatesTags!.map((x) => x)),
        "environment_impact_level": environmentImpactLevel,
        "environment_impact_level_tags": environmentImpactLevelTags == null ? [] : List<dynamic>.from(environmentImpactLevelTags!.map((x) => x)),
        "expiration_date": expirationDate,
        "food_groups": foodGroupsValues.reverse[foodGroups],
        "food_groups_tags": foodGroupsTags == null ? [] : List<dynamic>.from(foodGroupsTags!.map((x) => foodGroupsValues.reverse[x])),
        "forest_footprint_data": forestFootprintData?.toJson(),
        "fruits-vegetables-nuts_100g_estimate": fruitsVegetablesNuts100GEstimate,
        "generic_name": genericName,
        "generic_name_fr": genericNameFr,
        "id": productId,
        "image_front_small_url": imageFrontSmallUrl,
        "image_front_thumb_url": imageFrontThumbUrl,
        "image_front_url": imageFrontUrl,
        "image_small_url": imageSmallUrl,
        "image_thumb_url": imageThumbUrl,
        "image_url": imageUrl,
        "images": images?.toJson(),
        "informers_tags": informersTags == null ? [] : List<dynamic>.from(informersTags!.map((x) => x)),
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "ingredients_analysis": ingredientsAnalysis?.toJson(),
        "ingredients_analysis_tags": ingredientsAnalysisTags == null ? [] : List<dynamic>.from(ingredientsAnalysisTags!.map((x) => ingredientsAnalysisTagValues.reverse[x])),
        "ingredients_debug": ingredientsDebug == null ? [] : List<dynamic>.from(ingredientsDebug!.map((x) => x)),
        "ingredients_from_or_that_may_be_from_palm_oil_n": ingredientsFromOrThatMayBeFromPalmOilN,
        "ingredients_from_palm_oil_n": ingredientsFromPalmOilN,
        "ingredients_from_palm_oil_tags": ingredientsFromPalmOilTags == null ? [] : List<dynamic>.from(ingredientsFromPalmOilTags!.map((x) => x)),
        "ingredients_hierarchy": ingredientsHierarchy == null ? [] : List<dynamic>.from(ingredientsHierarchy!.map((x) => x)),
        "ingredients_ids_debug": ingredientsIdsDebug == null ? [] : List<dynamic>.from(ingredientsIdsDebug!.map((x) => x)),
        "ingredients_lc": allergensLcValues.reverse[ingredientsLc],
        "ingredients_n": ingredientsN,
        "ingredients_n_tags": ingredientsNTags == null ? [] : List<dynamic>.from(ingredientsNTags!.map((x) => x)),
        "ingredients_non_nutritive_sweeteners_n": ingredientsNonNutritiveSweetenersN,
        "ingredients_original_tags": ingredientsOriginalTags == null ? [] : List<dynamic>.from(ingredientsOriginalTags!.map((x) => x)),
        "ingredients_percent_analysis": ingredientsPercentAnalysis,
        "ingredients_sweeteners_n": ingredientsSweetenersN,
        "ingredients_tags": ingredientsTags == null ? [] : List<dynamic>.from(ingredientsTags!.map((x) => x)),
        "ingredients_text": ingredientsText,
        "ingredients_text_debug": ingredientsTextDebug,
        "ingredients_text_en": ingredientsTextEn,
        "ingredients_text_fr": ingredientsTextFr,
        "ingredients_text_with_allergens": ingredientsTextWithAllergens,
        "ingredients_text_with_allergens_en": ingredientsTextWithAllergensEn,
        "ingredients_text_with_allergens_fr": ingredientsTextWithAllergensFr,
        "ingredients_that_may_be_from_palm_oil_n": ingredientsThatMayBeFromPalmOilN,
        "ingredients_that_may_be_from_palm_oil_tags": ingredientsThatMayBeFromPalmOilTags == null ? [] : List<dynamic>.from(ingredientsThatMayBeFromPalmOilTags!.map((x) => x)),
        "ingredients_with_specified_percent_n": ingredientsWithSpecifiedPercentN,
        "ingredients_with_specified_percent_sum": ingredientsWithSpecifiedPercentSum,
        "ingredients_with_unspecified_percent_n": ingredientsWithUnspecifiedPercentN,
        "ingredients_with_unspecified_percent_sum": ingredientsWithUnspecifiedPercentSum,
        "ingredients_without_ciqual_codes": ingredientsWithoutCiqualCodes == null ? [] : List<dynamic>.from(ingredientsWithoutCiqualCodes!.map((x) => x)),
        "ingredients_without_ciqual_codes_n": ingredientsWithoutCiqualCodesN,
        "interface_version_created": interfaceVersionCreated,
        "interface_version_modified": interfaceVersionModified,
        "known_ingredients_n": knownIngredientsN,
        "labels": labels,
        "labels_hierarchy": labelsHierarchy == null ? [] : List<dynamic>.from(labelsHierarchy!.map((x) => x)),
        "labels_lc": allergensLcValues.reverse[labelsLc],
        "labels_old": labelsOld,
        "labels_tags": labelsTags == null ? [] : List<dynamic>.from(labelsTags!.map((x) => x)),
        "lang": allergensLcValues.reverse[lang],
        "languages": Map.from(languages!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "languages_codes": languagesCodes?.toJson(),
        "languages_hierarchy": languagesHierarchy == null ? [] : List<dynamic>.from(languagesHierarchy!.map((x) => x)),
        "languages_tags": languagesTags == null ? [] : List<dynamic>.from(languagesTags!.map((x) => x)),
        "last_edit_dates_tags": lastEditDatesTags == null ? [] : List<dynamic>.from(lastEditDatesTags!.map((x) => x)),
        "last_editor": lastEditor,
        "last_image_dates_tags": lastImageDatesTags == null ? [] : List<dynamic>.from(lastImageDatesTags!.map((x) => x)),
        "last_image_t": lastImageT,
        "last_modified_by": lastModifiedBy,
        "last_modified_t": lastModifiedT,
        "last_updated_t": lastUpdatedT,
        "lc": allergensLcValues.reverse[lc],
        "link": link,
        "main_countries_tags": mainCountriesTags == null ? [] : List<dynamic>.from(mainCountriesTags!.map((x) => x)),
        "manufacturing_places": manufacturingPlaces,
        "manufacturing_places_tags": manufacturingPlacesTags == null ? [] : List<dynamic>.from(manufacturingPlacesTags!.map((x) => x)),
        "max_imgid": maxImgid,
        "minerals_prev_tags": mineralsPrevTags == null ? [] : List<dynamic>.from(mineralsPrevTags!.map((x) => x)),
        "minerals_tags": mineralsTags == null ? [] : List<dynamic>.from(mineralsTags!.map((x) => x)),
        "misc_tags": miscTags == null ? [] : List<dynamic>.from(miscTags!.map((x) => x)),
        "no_nutrition_data": checkedValues.reverse[noNutritionData],
        "nova_group": novaGroup,
        "nova_group_debug": novaGroupDebugValues.reverse[novaGroupDebug],
        "nova_groups": novaGroups,
        "nova_groups_markers": Map.from(novaGroupsMarkers!).map((k, v) => MapEntry<String, dynamic>(k, List<dynamic>.from(v.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        "nova_groups_tags": novaGroupsTags == null ? [] : List<dynamic>.from(novaGroupsTags!.map((x) => novaGroupsTagValues.reverse[x])),
        "nucleotides_prev_tags": nucleotidesPrevTags == null ? [] : List<dynamic>.from(nucleotidesPrevTags!.map((x) => x)),
        "nucleotides_tags": nucleotidesTags == null ? [] : List<dynamic>.from(nucleotidesTags!.map((x) => x)),
        "nutrient_levels": nutrientLevels?.toJson(),
        "nutrient_levels_tags": nutrientLevelsTags == null ? [] : List<dynamic>.from(nutrientLevelsTags!.map((x) => nutrientLevelsTagValues.reverse[x])),
        "nutriments": nutriments?.toJson(),
        "nutriments_estimated": Map.from(nutrimentsEstimated!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "nutriscore": Map.from(nutriscore!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "nutriscore_2021_tags": nutriscore2021Tags == null ? [] : List<dynamic>.from(nutriscore2021Tags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutriscore_2023_tags": nutriscore2023Tags == null ? [] : List<dynamic>.from(nutriscore2023Tags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutriscore_data": nutriscoreData?.toJson(),
        "nutriscore_grade": ecoscoreGradeValues.reverse[nutriscoreGrade],
        "nutriscore_score": nutriscoreScore,
        "nutriscore_score_opposite": nutriscoreScoreOpposite,
        "nutriscore_tags": nutriscoreTags == null ? [] : List<dynamic>.from(nutriscoreTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutriscore_version": nutriscoreVersion,
        "nutrition_data": checkedValues.reverse[nutritionData],
        "nutrition_data_per": nutritionDataPValues.reverse[nutritionDataPer],
        "nutrition_data_prepared": nutritionDataPrepared,
        "nutrition_data_prepared_per": nutritionDataPValues.reverse[nutritionDataPreparedPer],
        "nutrition_grade_fr": ecoscoreGradeValues.reverse[nutritionGradeFr],
        "nutrition_grades": ecoscoreGradeValues.reverse[nutritionGrades],
        "nutrition_grades_tags": nutritionGradesTags == null ? [] : List<dynamic>.from(nutritionGradesTags!.map((x) => ecoscoreGradeValues.reverse[x])),
        "nutrition_score_beverage": nutritionScoreBeverage,
        "nutrition_score_debug": nutritionScoreDebug,
        "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients": nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredients,
        "nutrition_score_warning_fruits_vegetables_legumes_estimate_from_ingredients_value": nutritionScoreWarningFruitsVegetablesLegumesEstimateFromIngredientsValue,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients": nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value": nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
        "obsolete": obsolete,
        "obsolete_since_date": obsoleteSinceDate,
        "origins": origins,
        "origins_hierarchy": originsHierarchy == null ? [] : List<dynamic>.from(originsHierarchy!.map((x) => x)),
        "origins_lc": originsLcValues.reverse[originsLc],
        "origins_old": originsOld,
        "origins_tags": originsTags == null ? [] : List<dynamic>.from(originsTags!.map((x) => x)),
        "other_nutritional_substances_tags": otherNutritionalSubstancesTags == null ? [] : List<dynamic>.from(otherNutritionalSubstancesTags!.map((x) => x)),
        "packaging": packaging,
        "packaging_hierarchy": packagingHierarchy == null ? [] : List<dynamic>.from(packagingHierarchy!.map((x) => x)),
        "packaging_lc": allergensLcValues.reverse[packagingLc],
        "packaging_materials_tags": packagingMaterialsTags == null ? [] : List<dynamic>.from(packagingMaterialsTags!.map((x) => x)),
        "packaging_old": packagingOld,
        "packaging_old_before_taxonomization": packagingOldBeforeTaxonomization,
        "packaging_recycling_tags": packagingRecyclingTags == null ? [] : List<dynamic>.from(packagingRecyclingTags!.map((x) => packagingRecyclingTagValues.reverse[x])),
        "packaging_shapes_tags": packagingShapesTags == null ? [] : List<dynamic>.from(packagingShapesTags!.map((x) => x)),
        "packaging_tags": packagingTags == null ? [] : List<dynamic>.from(packagingTags!.map((x) => x)),
        "packaging_text": packagingText,
        "packaging_text_fr": packagingTextFr,
        "packagings": packagings == null ? [] : List<dynamic>.from(packagings!.map((x) => x.toJson())),
        "packagings_complete": packagingsComplete,
        "packagings_materials": packagingsMaterials?.toJson(),
        "packagings_n": packagingsN,
        "photographers_tags": photographersTags == null ? [] : List<dynamic>.from(photographersTags!.map((x) => x)),
        "pnns_groups_1": pnnsGroups1Values.reverse[pnnsGroups1],
        "pnns_groups_1_tags": pnnsGroups1Tags == null ? [] : List<dynamic>.from(pnnsGroups1Tags!.map((x) => pnnsGroups1TagValues.reverse[x])),
        "pnns_groups_2": pnnsGroups2Values.reverse[pnnsGroups2],
        "pnns_groups_2_tags": pnnsGroups2Tags == null ? [] : List<dynamic>.from(pnnsGroups2Tags!.map((x) => pnnsGroups2TagValues.reverse[x])),
        "popularity_key": popularityKey,
        "popularity_tags": popularityTags == null ? [] : List<dynamic>.from(popularityTags!.map((x) => x)),
        "product_name": productName,
        "product_name_en": productNameEn,
        "product_name_fr": productNameFr,
        "product_quantity": productQuantity,
        "product_quantity_unit": unitValues.reverse[productQuantityUnit],
        "purchase_places": purchasePlaces,
        "purchase_places_tags": purchasePlacesTags == null ? [] : List<dynamic>.from(purchasePlacesTags!.map((x) => x)),
        "quantity": quantity,
        "removed_countries_tags": removedCountriesTags == null ? [] : List<dynamic>.from(removedCountriesTags!.map((x) => x)),
        "rev": rev,
        "scans_n": scansN,
        "selected_images": selectedImages?.toJson(),
        "serving_size": servingSize,
        "sortkey": sortkey,
        "states": states,
        "states_hierarchy": statesHierarchy == null ? [] : List<dynamic>.from(statesHierarchy!.map((x) => x)),
        "states_tags": statesTags == null ? [] : List<dynamic>.from(statesTags!.map((x) => x)),
        "stores": stores,
        "stores_tags": storesTags == null ? [] : List<dynamic>.from(storesTags!.map((x) => x)),
        "teams": teams,
        "teams_tags": teamsTags == null ? [] : List<dynamic>.from(teamsTags!.map((x) => x)),
        "traces": traces,
        "traces_from_ingredients": tracesFromIngredients,
        "traces_from_user": tracesFromUser,
        "traces_hierarchy": tracesHierarchy == null ? [] : List<dynamic>.from(tracesHierarchy!.map((x) => x)),
        "traces_lc": allergensLcValues.reverse[tracesLc],
        "traces_tags": tracesTags == null ? [] : List<dynamic>.from(tracesTags!.map((x) => x)),
        "unique_scans_n": uniqueScansN,
        "unknown_ingredients_n": unknownIngredientsN,
        "unknown_nutrients_tags": unknownNutrientsTags == null ? [] : List<dynamic>.from(unknownNutrientsTags!.map((x) => x)),
        "update_key": updateKey,
        "url": url,
        "vitamins_prev_tags": vitaminsPrevTags == null ? [] : List<dynamic>.from(vitaminsPrevTags!.map((x) => x)),
        "vitamins_tags": vitaminsTags == null ? [] : List<dynamic>.from(vitaminsTags!.map((x) => x)),
        "weighers_tags": weighersTags == null ? [] : List<dynamic>.from(weighersTags!.map((x) => x)),
        "allergens_imported": allergensImported,
        "brands_imported": brandsImported,
        "countries_imported": countriesImportedValues.reverse[countriesImported],
        "data_sources_imported": dataSourcesImported,
        "editors": editors == null ? [] : List<dynamic>.from(editors!.map((x) => x)),
        "emb_codes_20141016": embCodes20141016,
        "generic_name_en": genericNameEnValues.reverse[genericNameEn],
        "ingredients_text_fr_imported": ingredientsTextFrImported,
        "lc_imported": allergensLcValues.reverse[lcImported],
        "net_weight_unit": unitValues.reverse[netWeightUnit],
        "net_weight_value": netWeightValue,
        "nutrition_data_per_imported": nutritionDataPValues.reverse[nutritionDataPerImported],
        "nutrition_data_prepared_per_imported": nutritionDataPValues.reverse[nutritionDataPreparedPerImported],
        "nutrition_grade_fr_producer": ecoscoreGradeValues.reverse[nutritionGradeFrProducer],
        "origin": origin,
        "origin_en": originEn,
        "origin_fr": originFr,
        "other_nutritional_substances_prev_tags": otherNutritionalSubstancesPrevTags == null ? [] : List<dynamic>.from(otherNutritionalSubstancesPrevTags!.map((x) => x)),
        "owner": ownerValues.reverse[owner],
        "owner_fields": Map.from(ownerFields!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "owners_tags": ownerValues.reverse[ownersTags],
        "packaging_text_en": packagingTextEnValues.reverse[packagingTextEn],
        "product_name_fr_imported": productNameFrImported,
        "quantity_imported": quantityImported,
        "serving_quantity": servingQuantity,
        "serving_quantity_unit": unitValues.reverse[servingQuantityUnit],
        "sources": sources == null ? [] : List<dynamic>.from(sources!.map((x) => x.toJson())),
        "stores_imported": storesImported,
        "completed_t": completedT,
        "ingredients_text_debug_tags": ingredientsTextDebugTags == null ? [] : List<dynamic>.from(ingredientsTextDebugTags!.map((x) => x)),
        "nutrition_score_warning_no_fiber": nutritionScoreWarningNoFiber,
        "checkers": checkers == null ? [] : List<dynamic>.from(checkers!.map((x) => x)),
        "correctors": correctors == null ? [] : List<dynamic>.from(correctors!.map((x) => x)),
        "grades": grades?.toJson(),
        "informers": informers == null ? [] : List<dynamic>.from(informers!.map((x) => x)),
        "new_additives_n": newAdditivesN,
        "photographers": photographers == null ? [] : List<dynamic>.from(photographers!.map((x) => x)),
        "scores": scores?.toJson(),
        "specific_ingredients": specificIngredients == null ? [] : List<dynamic>.from(specificIngredients!.map((x) => x.toJson())),
        "debug_tags": debugTags == null ? [] : List<dynamic>.from(debugTags!.map((x) => x)),
        "carbon_footprint_from_meat_or_fish_debug": carbonFootprintFromMeatOrFishDebug,
        "checked": checkedValues.reverse[checked],
        "last_check_dates_tags": lastCheckDatesTags == null ? [] : List<dynamic>.from(lastCheckDatesTags!.map((x) => x)),
        "last_checked_t": lastCheckedT,
        "last_checker": lastChecker,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate": nutritionScoreWarningFruitsVegetablesNutsEstimate,
        "packagings_materials_main": packagingsMaterialsMain,
        "weighters_tags": weightersTags == null ? [] : List<dynamic>.from(weightersTags!.map((x) => x)),
        "generic_name_de": genericNameDe,
        "ingredients_text_de": ingredientsTextDe,
        "ingredients_text_de_ocr_1574621815": ingredientsTextDeOcr1574621815,
        "ingredients_text_de_ocr_1574621815_result": ingredientsTextDeOcr1574621815Result,
        "ingredients_text_fi": ingredientsTextFi,
        "ingredients_text_with_allergens_de": ingredientsTextWithAllergensDe,
        "ingredients_text_with_allergens_fi": ingredientsTextWithAllergensFi,
        "origin_de": originDe,
        "packaging_text_de": packagingTextDe,
        "packaging_text_fi": packagingTextFi,
        "product_name_de": productNameDe,
        "product_name_fi": productNameFi,
        "abbreviated_product_name": abbreviatedProductName,
        "abbreviated_product_name_fr": abbreviatedProductNameFr,
        "abbreviated_product_name_fr_imported": abbreviatedProductNameFrImported,
        "abbreviated_product_name_imported": abbreviatedProductNameImported,
        "categories_imported": categoriesImported,
        "conservation_conditions": conservationConditions,
        "conservation_conditions_fr": conservationConditionsFr,
        "conservation_conditions_fr_imported": conservationConditionsFrImported,
        "customer_service": customerService,
        "customer_service_fr": customerServiceFr,
        "customer_service_fr_imported": customerServiceFrImported,
        "generic_name_fr_imported": genericNameFrImported,
        "lang_imported": allergensLcValues.reverse[langImported],
        "nutriscore_grade_producer": nutriscoreGradeProducer,
        "nutriscore_grade_producer_imported": nutriscoreGradeProducerImported,
        "obsolete_imported": obsoleteImported,
        "serving_size_imported": servingSizeImported,
        "sources_fields": sourcesFields?.toJson(),
        "traces_imported": tracesImported,
        "ingredients_text_fr_ocr_1546446890": ingredientsTextFrOcr1546446890,
        "ingredients_text_fr_ocr_1546446890_result": ingredientsTextFrOcr1546446890Result,
        "nova_group_error": novaGroupError,
        "producer_version_id": producerVersionId,
        "conservation_conditions_es": conservationConditionsEs,
        "conservation_conditions_es_imported": conservationConditionsEsImported,
        "customer_service_es": customerServiceEs,
        "customer_service_es_imported": customerServiceEsImported,
        "generic_name_es": genericNameEs,
        "generic_name_es_imported": genericNameEsImported,
        "ingredients_text_es": ingredientsTextEs,
        "ingredients_text_es_imported": ingredientsTextEsImported,
        "ingredients_text_with_allergens_es": ingredientsTextWithAllergensEs,
        "labels_imported": labelsImported,
        "origin_es": originEs,
        "owner_imported": ownerValues.reverse[ownerImported],
        "packaging_text_es": packagingTextEs,
        "producer_product_id": producerProductId,
        "producer_product_id_imported": producerProductIdImported,
        "product_name_es": productNameEs,
        "product_name_es_imported": productNameEsImported,
        "producer": producer,
        "producer_fr": producerFr,
        "emb_codes_imported": embCodesImported,
        "preparation": preparation,
        "preparation_fr": preparationFr,
        "preparation_fr_imported": preparationFrImported,
        "origin_fr_imported": originFrImported,
        "other_information": otherInformation,
        "other_information_fr": otherInformationFr,
        "producer_fr_imported": producerFrImported,
        "countries_beforescanbot": countriesBeforescanbot,
        "expiration_date_debug_tags": expirationDateDebugTags == null ? [] : List<dynamic>.from(expirationDateDebugTags!.map((x) => x)),
        "generic_name_en_debug_tags": genericNameEnDebugTags == null ? [] : List<dynamic>.from(genericNameEnDebugTags!.map((x) => x)),
        "generic_name_fr_debug_tags": genericNameFrDebugTags == null ? [] : List<dynamic>.from(genericNameFrDebugTags!.map((x) => x)),
        "generic_name_it": genericNameIt,
        "generic_name_it_debug_tags": genericNameItDebugTags == null ? [] : List<dynamic>.from(genericNameItDebugTags!.map((x) => x)),
        "ingredients_text_fr_debug_tags": ingredientsTextFrDebugTags == null ? [] : List<dynamic>.from(ingredientsTextFrDebugTags!.map((x) => x)),
        "ingredients_text_it": ingredientsTextIt,
        "ingredients_text_it_debug_tags": ingredientsTextItDebugTags == null ? [] : List<dynamic>.from(ingredientsTextItDebugTags!.map((x) => x)),
        "ingredients_text_with_allergens_it": ingredientsTextWithAllergensIt,
        "lang_debug_tags": langDebugTags == null ? [] : List<dynamic>.from(langDebugTags!.map((x) => x)),
        "link_debug_tags": linkDebugTags == null ? [] : List<dynamic>.from(linkDebugTags!.map((x) => x)),
        "product_name_en_debug_tags": productNameEnDebugTags == null ? [] : List<dynamic>.from(productNameEnDebugTags!.map((x) => x)),
        "product_name_fr_debug_tags": productNameFrDebugTags == null ? [] : List<dynamic>.from(productNameFrDebugTags!.map((x) => x)),
        "product_name_it": productNameIt,
        "product_name_it_debug_tags": productNameItDebugTags == null ? [] : List<dynamic>.from(productNameItDebugTags!.map((x) => x)),
        "purchase_places_debug_tags": purchasePlacesDebugTags == null ? [] : List<dynamic>.from(purchasePlacesDebugTags!.map((x) => x)),
        "serving_size_debug_tags": servingSizeDebugTags == null ? [] : List<dynamic>.from(servingSizeDebugTags!.map((x) => x)),
        "stores_debug_tags": storesDebugTags == null ? [] : List<dynamic>.from(storesDebugTags!.map((x) => x)),
        "traces_debug_tags": tracesDebugTags == null ? [] : List<dynamic>.from(tracesDebugTags!.map((x) => x)),
        "generic_name_cs": genericNameCs,
        "generic_name_nl": genericNameNl,
        "ingredients_text_cs": ingredientsTextCs,
        "ingredients_text_fr_ocr_1548773315": ingredientsTextFrOcr1548773315,
        "ingredients_text_fr_ocr_1548773315_result": ingredientsTextFrOcr1548773315Result,
        "ingredients_text_nl": ingredientsTextNl,
        "ingredients_text_with_allergens_cs": ingredientsTextWithAllergensCs,
        "ingredients_text_with_allergens_nl": ingredientsTextWithAllergensNl,
        "origin_cs": originCs,
        "origin_it": originIt,
        "origin_nl": originNl,
        "packaging_text_cs": packagingTextCs,
        "packaging_text_it": packagingTextIt,
        "packaging_text_nl": packagingTextNl,
        "product_name_cs": productNameCs,
        "product_name_nl": productNameNl,
        "allergens_debug_tags": allergensDebugTags == null ? [] : List<dynamic>.from(allergensDebugTags!.map((x) => x)),
        "brands_debug_tags": brandsDebugTags == null ? [] : List<dynamic>.from(brandsDebugTags!.map((x) => x)),
        "countries_debug_tags": countriesDebugTags == null ? [] : List<dynamic>.from(countriesDebugTags!.map((x) => x)),
        "emb_codes_debug_tags": embCodesDebugTags == null ? [] : List<dynamic>.from(embCodesDebugTags!.map((x) => x)),
        "manufacturing_places_debug_tags": manufacturingPlacesDebugTags == null ? [] : List<dynamic>.from(manufacturingPlacesDebugTags!.map((x) => x)),
        "nutrition_data_prepared_per_debug_tags": nutritionDataPreparedPerDebugTags == null ? [] : List<dynamic>.from(nutritionDataPreparedPerDebugTags!.map((x) => x)),
        "quantity_debug_tags": quantityDebugTags == null ? [] : List<dynamic>.from(quantityDebugTags!.map((x) => x)),
        "ingredients_text_fr_ocr_1549708244": ingredientsTextFrOcr1549708244,
        "ingredients_text_fr_ocr_1549708244_result": ingredientsTextFrOcr1549708244Result,
        "ingredients_text_fr_ocr_1562673306": ingredientsTextFrOcr1562673306,
        "ingredients_text_fr_ocr_1562673306_result": ingredientsTextFrOcr1562673306Result,
        "product_name_debug_tags": productNameDebugTags == null ? [] : List<dynamic>.from(productNameDebugTags!.map((x) => x)),
        "ingredients_text_fr_ocr_1540905347": ingredientsTextFrOcr1540905347,
        "ingredients_text_fr_ocr_1540905347_result": ingredientsTextFrOcr1540905347Result,
        "conservation_conditions_nl": conservationConditionsNl,
        "conservation_conditions_nl_imported": conservationConditionsNlImported,
        "customer_service_nl": customerServiceNl,
        "customer_service_nl_imported": customerServiceNlImported,
        "generic_name_nl_imported": genericNameNlImported,
        "ingredients_text_nl_imported": ingredientsTextNlImported,
        "product_name_nl_imported": productNameNlImported,
        "generic_name_bg": genericNameBg,
        "generic_name_ro": genericNameRo,
        "ingredients_text_bg": ingredientsTextBg,
        "ingredients_text_ro": ingredientsTextRo,
        "ingredients_text_with_allergens_bg": ingredientsTextWithAllergensBg,
        "ingredients_text_with_allergens_ro": ingredientsTextWithAllergensRo,
        "nutrition_score_warning_no_fruits_vegetables_nuts": nutritionScoreWarningNoFruitsVegetablesNuts,
        "origin_bg": originBg,
        "origin_ro": originRo,
        "packaging_text_bg": packagingTextBg,
        "packaging_text_ro": packagingTextRo,
        "product_name_bg": productNameBg,
        "product_name_ro": productNameRo,
        "ingredients_text_de_ocr_1566234809": ingredientsTextDeOcr1566234809,
        "ingredients_text_de_ocr_1566234809_result": ingredientsTextDeOcr1566234809Result,
        "ingredients_text_fr_ocr_1566234633": ingredientsTextFrOcr1566234633,
        "ingredients_text_fr_ocr_1566234633_result": ingredientsTextFrOcr1566234633Result,
        "ingredients_text_fr_ocr_1544199794": ingredientsTextFrOcr1544199794,
        "ingredients_text_fr_ocr_1544199794_result": ingredientsTextFrOcr1544199794Result,
    };
}

enum AllergensLc {
    BG,
    CS,
    DE,
    EN,
    ES,
    FR
}

final allergensLcValues = EnumValues({
    "bg": AllergensLc.BG,
    "cs": AllergensLc.CS,
    "de": AllergensLc.DE,
    "en": AllergensLc.EN,
    "es": AllergensLc.ES,
    "fr": AllergensLc.FR
});

class CategoriesProperties {
    String? agribalyseProxyFoodCodeEn;
    String? agribalyseFoodCodeEn;
    String? ciqualFoodCodeEn;

    CategoriesProperties({
        this.agribalyseProxyFoodCodeEn,
        this.agribalyseFoodCodeEn,
        this.ciqualFoodCodeEn,
    });

    factory CategoriesProperties.fromJson(Map<String, dynamic> json) => CategoriesProperties(
        agribalyseProxyFoodCodeEn: json["agribalyse_proxy_food_code:en"],
        agribalyseFoodCodeEn: json["agribalyse_food_code:en"],
        ciqualFoodCodeEn: json["ciqual_food_code:en"],
    );

    Map<String, dynamic> toJson() => {
        "agribalyse_proxy_food_code:en": agribalyseProxyFoodCodeEn,
        "agribalyse_food_code:en": agribalyseFoodCodeEn,
        "ciqual_food_code:en": ciqualFoodCodeEn,
    };
}

class CategoryProperties {
    String? ciqualFoodNameEn;
    String? ciqualFoodNameFr;

    CategoryProperties({
        this.ciqualFoodNameEn,
        this.ciqualFoodNameFr,
    });

    factory CategoryProperties.fromJson(Map<String, dynamic> json) => CategoryProperties(
        ciqualFoodNameEn: json["ciqual_food_name:en"],
        ciqualFoodNameFr: json["ciqual_food_name:fr"],
    );

    Map<String, dynamic> toJson() => {
        "ciqual_food_name:en": ciqualFoodNameEn,
        "ciqual_food_name:fr": ciqualFoodNameFr,
    };
}

enum Checked {
    EMPTY,
    NULL,
    ON
}

final checkedValues = EnumValues({
    "": Checked.EMPTY,
    "null": Checked.NULL,
    "on": Checked.ON
});

enum CountriesImported {
    FRANCE,
    FRANCE_ESPAGNE
}

final countriesImportedValues = EnumValues({
    "France": CountriesImported.FRANCE,
    "France, Espagne": CountriesImported.FRANCE_ESPAGNE
});

class EcoscoreData {
    Adjustments? adjustments;
    Agribalyse? agribalyse;
    EcoscoreGrade? grade;
    Map<String, EcoscoreGrade>? grades;
    Missing? missing;
    int? missingDataWarning;
    PreviousData? previousData;
    int? score;
    Map<String, double>? scores;
    Status? status;
    int? missingKeyData;
    int? missingAgribalyseMatchWarning;
    String? downgraded;

    EcoscoreData({
        this.adjustments,
        this.agribalyse,
        this.grade,
        this.grades,
        this.missing,
        this.missingDataWarning,
        this.previousData,
        this.score,
        this.scores,
        this.status,
        this.missingKeyData,
        this.missingAgribalyseMatchWarning,
        this.downgraded,
    });

    factory EcoscoreData.fromJson(Map<String, dynamic> json) => EcoscoreData(
        adjustments: json["adjustments"] == null ? null : Adjustments.fromJson(json["adjustments"]),
        agribalyse: json["agribalyse"] == null ? null : Agribalyse.fromJson(json["agribalyse"]),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        grades: Map.from(json["grades"]!).map((k, v) => MapEntry<String, EcoscoreGrade>(k, ecoscoreGradeValues.map[v]!)),
        missing: json["missing"] == null ? null : Missing.fromJson(json["missing"]),
        missingDataWarning: json["missing_data_warning"],
        previousData: json["previous_data"] == null ? null : PreviousData.fromJson(json["previous_data"]),
        score: json["score"],
        scores: Map.from(json["scores"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        status: statusValues.map[json["status"]]!,
        missingKeyData: json["missing_key_data"],
        missingAgribalyseMatchWarning: json["missing_agribalyse_match_warning"],
        downgraded: json["downgraded"],
    );

    Map<String, dynamic> toJson() => {
        "adjustments": adjustments?.toJson(),
        "agribalyse": agribalyse?.toJson(),
        "grade": ecoscoreGradeValues.reverse[grade],
        "grades": Map.from(grades!).map((k, v) => MapEntry<String, dynamic>(k, ecoscoreGradeValues.reverse[v])),
        "missing": missing?.toJson(),
        "missing_data_warning": missingDataWarning,
        "previous_data": previousData?.toJson(),
        "score": score,
        "scores": Map.from(scores!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "status": statusValues.reverse[status],
        "missing_key_data": missingKeyData,
        "missing_agribalyse_match_warning": missingAgribalyseMatchWarning,
        "downgraded": downgraded,
    };
}

class Adjustments {
    OriginsOfIngredients? originsOfIngredients;
    AdjustmentsPackaging? packaging;
    ProductionSystem? productionSystem;
    ThreatenedSpecies? threatenedSpecies;

    Adjustments({
        this.originsOfIngredients,
        this.packaging,
        this.productionSystem,
        this.threatenedSpecies,
    });

    factory Adjustments.fromJson(Map<String, dynamic> json) => Adjustments(
        originsOfIngredients: json["origins_of_ingredients"] == null ? null : OriginsOfIngredients.fromJson(json["origins_of_ingredients"]),
        packaging: json["packaging"] == null ? null : AdjustmentsPackaging.fromJson(json["packaging"]),
        productionSystem: json["production_system"] == null ? null : ProductionSystem.fromJson(json["production_system"]),
        threatenedSpecies: json["threatened_species"] == null ? null : ThreatenedSpecies.fromJson(json["threatened_species"]),
    );

    Map<String, dynamic> toJson() => {
        "origins_of_ingredients": originsOfIngredients?.toJson(),
        "packaging": packaging?.toJson(),
        "production_system": productionSystem?.toJson(),
        "threatened_species": threatenedSpecies?.toJson(),
    };
}

class OriginsOfIngredients {
    List<AggregatedOrigin>? aggregatedOrigins;
    double? epiScore;
    int? epiValue;
    List<Origin>? originsFromCategories;
    List<Origin>? originsFromOriginsField;
    int? transportationScore;
    Map<String, double>? transportationScores;
    int? transportationValue;
    Map<String, double>? transportationValues;
    int? value;
    Map<String, double>? values;
    OriginsOfIngredientsWarning? warning;

    OriginsOfIngredients({
        this.aggregatedOrigins,
        this.epiScore,
        this.epiValue,
        this.originsFromCategories,
        this.originsFromOriginsField,
        this.transportationScore,
        this.transportationScores,
        this.transportationValue,
        this.transportationValues,
        this.value,
        this.values,
        this.warning,
    });

    factory OriginsOfIngredients.fromJson(Map<String, dynamic> json) => OriginsOfIngredients(
        aggregatedOrigins: json["aggregated_origins"] == null ? [] : List<AggregatedOrigin>.from(json["aggregated_origins"]!.map((x) => AggregatedOrigin.fromJson(x))),
        epiScore: json["epi_score"]?.toDouble(),
        epiValue: json["epi_value"],
        originsFromCategories: json["origins_from_categories"] == null ? [] : List<Origin>.from(json["origins_from_categories"]!.map((x) => originValues.map[x]!)),
        originsFromOriginsField: json["origins_from_origins_field"] == null ? [] : List<Origin>.from(json["origins_from_origins_field"]!.map((x) => originValues.map[x]!)),
        transportationScore: json["transportation_score"],
        transportationScores: Map.from(json["transportation_scores"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        transportationValue: json["transportation_value"],
        transportationValues: Map.from(json["transportation_values"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        value: json["value"],
        values: Map.from(json["values"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        warning: originsOfIngredientsWarningValues.map[json["warning"]]!,
    );

    Map<String, dynamic> toJson() => {
        "aggregated_origins": aggregatedOrigins == null ? [] : List<dynamic>.from(aggregatedOrigins!.map((x) => x.toJson())),
        "epi_score": epiScore,
        "epi_value": epiValue,
        "origins_from_categories": originsFromCategories == null ? [] : List<dynamic>.from(originsFromCategories!.map((x) => originValues.reverse[x])),
        "origins_from_origins_field": originsFromOriginsField == null ? [] : List<dynamic>.from(originsFromOriginsField!.map((x) => originValues.reverse[x])),
        "transportation_score": transportationScore,
        "transportation_scores": Map.from(transportationScores!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "transportation_value": transportationValue,
        "transportation_values": Map.from(transportationValues!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "value": value,
        "values": Map.from(values!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "warning": originsOfIngredientsWarningValues.reverse[warning],
    };
}

class AggregatedOrigin {
    String? epiScore;
    Origin? origin;
    double? percent;
    dynamic transportationScore;

    AggregatedOrigin({
        this.epiScore,
        this.origin,
        this.percent,
        this.transportationScore,
    });

    factory AggregatedOrigin.fromJson(Map<String, dynamic> json) => AggregatedOrigin(
        epiScore: json["epi_score"],
        origin: originValues.map[json["origin"]]!,
        percent: json["percent"]?.toDouble(),
        transportationScore: json["transportation_score"],
    );

    Map<String, dynamic> toJson() => {
        "epi_score": epiScore,
        "origin": originValues.reverse[origin],
        "percent": percent,
        "transportation_score": transportationScore,
    };
}

enum Origin {
    EN_EUROPEAN_UNION,
    EN_FRANCE,
    EN_ICELAND,
    EN_ITALY,
    EN_UNITED_KINGDOM,
    EN_UNKNOWN
}

final originValues = EnumValues({
    "en:european-union": Origin.EN_EUROPEAN_UNION,
    "en:france": Origin.EN_FRANCE,
    "en:iceland": Origin.EN_ICELAND,
    "en:italy": Origin.EN_ITALY,
    "en:united-kingdom": Origin.EN_UNITED_KINGDOM,
    "en:unknown": Origin.EN_UNKNOWN
});

enum OriginsOfIngredientsWarning {
    ORIGINS_ARE_100_PERCENT_UNKNOWN
}

final originsOfIngredientsWarningValues = EnumValues({
    "origins_are_100_percent_unknown": OriginsOfIngredientsWarning.ORIGINS_ARE_100_PERCENT_UNKNOWN
});

class AdjustmentsPackaging {
    int? nonRecyclableAndNonBiodegradableMaterials;
    List<PackagingElement>? packagings;
    double? score;
    int? value;
    PackagingWarning? warning;

    AdjustmentsPackaging({
        this.nonRecyclableAndNonBiodegradableMaterials,
        this.packagings,
        this.score,
        this.value,
        this.warning,
    });

    factory AdjustmentsPackaging.fromJson(Map<String, dynamic> json) => AdjustmentsPackaging(
        nonRecyclableAndNonBiodegradableMaterials: json["non_recyclable_and_non_biodegradable_materials"],
        packagings: json["packagings"] == null ? [] : List<PackagingElement>.from(json["packagings"]!.map((x) => PackagingElement.fromJson(x))),
        score: json["score"]?.toDouble(),
        value: json["value"],
        warning: packagingWarningValues.map[json["warning"]]!,
    );

    Map<String, dynamic> toJson() => {
        "non_recyclable_and_non_biodegradable_materials": nonRecyclableAndNonBiodegradableMaterials,
        "packagings": packagings == null ? [] : List<dynamic>.from(packagings!.map((x) => x.toJson())),
        "score": score,
        "value": value,
        "warning": packagingWarningValues.reverse[warning],
    };
}

class PackagingElement {
    int? ecoscoreMaterialScore;
    double? ecoscoreShapeRatio;
    String? material;
    FromPalmOil? nonRecyclableAndNonBiodegradable;
    String? shape;
    dynamic numberOfUnits;
    QuantityPerUnit? quantityPerUnit;
    Unit? quantityPerUnitUnit;
    int? quantityPerUnitValue;
    PackagingRecyclingTag? recycling;
    double? weightMeasured;
    double? weightSpecified;

    PackagingElement({
        this.ecoscoreMaterialScore,
        this.ecoscoreShapeRatio,
        this.material,
        this.nonRecyclableAndNonBiodegradable,
        this.shape,
        this.numberOfUnits,
        this.quantityPerUnit,
        this.quantityPerUnitUnit,
        this.quantityPerUnitValue,
        this.recycling,
        this.weightMeasured,
        this.weightSpecified,
    });

    factory PackagingElement.fromJson(Map<String, dynamic> json) => PackagingElement(
        ecoscoreMaterialScore: json["ecoscore_material_score"],
        ecoscoreShapeRatio: json["ecoscore_shape_ratio"]?.toDouble(),
        material: json["material"],
        nonRecyclableAndNonBiodegradable: fromPalmOilValues.map[json["non_recyclable_and_non_biodegradable"]]!,
        shape: json["shape"],
        numberOfUnits: json["number_of_units"],
        quantityPerUnit: quantityPerUnitValues.map[json["quantity_per_unit"]]!,
        quantityPerUnitUnit: unitValues.map[json["quantity_per_unit_unit"]]!,
        quantityPerUnitValue: json["quantity_per_unit_value"],
        recycling: packagingRecyclingTagValues.map[json["recycling"]]!,
        weightMeasured: json["weight_measured"]?.toDouble(),
        weightSpecified: json["weight_specified"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "ecoscore_material_score": ecoscoreMaterialScore,
        "ecoscore_shape_ratio": ecoscoreShapeRatio,
        "material": material,
        "non_recyclable_and_non_biodegradable": fromPalmOilValues.reverse[nonRecyclableAndNonBiodegradable],
        "shape": shape,
        "number_of_units": numberOfUnits,
        "quantity_per_unit": quantityPerUnitValues.reverse[quantityPerUnit],
        "quantity_per_unit_unit": unitValues.reverse[quantityPerUnitUnit],
        "quantity_per_unit_value": quantityPerUnitValue,
        "recycling": packagingRecyclingTagValues.reverse[recycling],
        "weight_measured": weightMeasured,
        "weight_specified": weightSpecified,
    };
}

enum FromPalmOil {
    MAYBE,
    NO,
    YES
}

final fromPalmOilValues = EnumValues({
    "maybe": FromPalmOil.MAYBE,
    "no": FromPalmOil.NO,
    "yes": FromPalmOil.YES
});

enum QuantityPerUnit {
    THE_176_G,
    THE_300_G
}

final quantityPerUnitValues = EnumValues({
    "176g": QuantityPerUnit.THE_176_G,
    "300 g": QuantityPerUnit.THE_300_G
});

enum Unit {
    EMPTY,
    G,
    K_J
}

final unitValues = EnumValues({
    "%": Unit.EMPTY,
    "g": Unit.G,
    "kJ": Unit.K_J
});

enum PackagingRecyclingTag {
    EN_DISCARD,
    EN_RECYCLE,
    EN_RECYCLE_IN_SORTING_BIN,
    FI_KARTONKIKERYKSEEN
}

final packagingRecyclingTagValues = EnumValues({
    "en:discard": PackagingRecyclingTag.EN_DISCARD,
    "en:recycle": PackagingRecyclingTag.EN_RECYCLE,
    "en:recycle-in-sorting-bin": PackagingRecyclingTag.EN_RECYCLE_IN_SORTING_BIN,
    "fi:Kartonkikeräykseen": PackagingRecyclingTag.FI_KARTONKIKERYKSEEN
});

enum PackagingWarning {
    PACKAGING_DATA_MISSING,
    UNSCORED_MATERIAL,
    UNSCORED_SHAPE,
    UNSPECIFIED_MATERIAL,
    UNSPECIFIED_SHAPE
}

final packagingWarningValues = EnumValues({
    "packaging_data_missing": PackagingWarning.PACKAGING_DATA_MISSING,
    "unscored_material": PackagingWarning.UNSCORED_MATERIAL,
    "unscored_shape": PackagingWarning.UNSCORED_SHAPE,
    "unspecified_material": PackagingWarning.UNSPECIFIED_MATERIAL,
    "unspecified_shape": PackagingWarning.UNSPECIFIED_SHAPE
});

class ProductionSystem {
    List<Label>? labels;
    int? value;
    ProductionSystemWarning? warning;

    ProductionSystem({
        this.labels,
        this.value,
        this.warning,
    });

    factory ProductionSystem.fromJson(Map<String, dynamic> json) => ProductionSystem(
        labels: json["labels"] == null ? [] : List<Label>.from(json["labels"]!.map((x) => labelValues.map[x]!)),
        value: json["value"],
        warning: productionSystemWarningValues.map[json["warning"]]!,
    );

    Map<String, dynamic> toJson() => {
        "labels": labels == null ? [] : List<dynamic>.from(labels!.map((x) => labelValues.reverse[x])),
        "value": value,
        "warning": productionSystemWarningValues.reverse[warning],
    };
}

enum Label {
    EN_SUSTAINABLE_FISHING_METHOD,
    EN_SUSTAINABLE_SEAFOOD_MSC
}

final labelValues = EnumValues({
    "en:sustainable-fishing-method": Label.EN_SUSTAINABLE_FISHING_METHOD,
    "en:sustainable-seafood-msc": Label.EN_SUSTAINABLE_SEAFOOD_MSC
});

enum ProductionSystemWarning {
    NO_LABEL
}

final productionSystemWarningValues = EnumValues({
    "no_label": ProductionSystemWarning.NO_LABEL
});

class ThreatenedSpecies {
    String? warning;

    ThreatenedSpecies({
        this.warning,
    });

    factory ThreatenedSpecies.fromJson(Map<String, dynamic> json) => ThreatenedSpecies(
        warning: json["warning"],
    );

    Map<String, dynamic> toJson() => {
        "warning": warning,
    };
}

class Agribalyse {
    String? agribalyseProxyFoodCode;
    double? co2Agriculture;
    double? co2Consumption;
    double? co2Distribution;
    double? co2Packaging;
    double? co2Processing;
    double? co2Total;
    double? co2Transportation;
    String? code;
    String? dqr;
    double? efAgriculture;
    double? efConsumption;
    double? efDistribution;
    double? efPackaging;
    double? efProcessing;
    double? efTotal;
    double? efTransportation;
    int? isBeverage;
    String? nameEn;
    String? nameFr;
    int? score;
    Version? version;
    String? agribalyseFoodCode;
    AgribalyseWarning? warning;

    Agribalyse({
        this.agribalyseProxyFoodCode,
        this.co2Agriculture,
        this.co2Consumption,
        this.co2Distribution,
        this.co2Packaging,
        this.co2Processing,
        this.co2Total,
        this.co2Transportation,
        this.code,
        this.dqr,
        this.efAgriculture,
        this.efConsumption,
        this.efDistribution,
        this.efPackaging,
        this.efProcessing,
        this.efTotal,
        this.efTransportation,
        this.isBeverage,
        this.nameEn,
        this.nameFr,
        this.score,
        this.version,
        this.agribalyseFoodCode,
        this.warning,
    });

    factory Agribalyse.fromJson(Map<String, dynamic> json) => Agribalyse(
        agribalyseProxyFoodCode: json["agribalyse_proxy_food_code"],
        co2Agriculture: json["co2_agriculture"]?.toDouble(),
        co2Consumption: json["co2_consumption"]?.toDouble(),
        co2Distribution: json["co2_distribution"]?.toDouble(),
        co2Packaging: json["co2_packaging"]?.toDouble(),
        co2Processing: json["co2_processing"]?.toDouble(),
        co2Total: json["co2_total"]?.toDouble(),
        co2Transportation: json["co2_transportation"]?.toDouble(),
        code: json["code"],
        dqr: json["dqr"],
        efAgriculture: json["ef_agriculture"]?.toDouble(),
        efConsumption: json["ef_consumption"]?.toDouble(),
        efDistribution: json["ef_distribution"]?.toDouble(),
        efPackaging: json["ef_packaging"]?.toDouble(),
        efProcessing: json["ef_processing"]?.toDouble(),
        efTotal: json["ef_total"]?.toDouble(),
        efTransportation: json["ef_transportation"]?.toDouble(),
        isBeverage: json["is_beverage"],
        nameEn: json["name_en"],
        nameFr: json["name_fr"],
        score: json["score"],
        version: versionValues.map[json["version"]]!,
        agribalyseFoodCode: json["agribalyse_food_code"],
        warning: agribalyseWarningValues.map[json["warning"]]!,
    );

    Map<String, dynamic> toJson() => {
        "agribalyse_proxy_food_code": agribalyseProxyFoodCode,
        "co2_agriculture": co2Agriculture,
        "co2_consumption": co2Consumption,
        "co2_distribution": co2Distribution,
        "co2_packaging": co2Packaging,
        "co2_processing": co2Processing,
        "co2_total": co2Total,
        "co2_transportation": co2Transportation,
        "code": code,
        "dqr": dqr,
        "ef_agriculture": efAgriculture,
        "ef_consumption": efConsumption,
        "ef_distribution": efDistribution,
        "ef_packaging": efPackaging,
        "ef_processing": efProcessing,
        "ef_total": efTotal,
        "ef_transportation": efTransportation,
        "is_beverage": isBeverage,
        "name_en": nameEn,
        "name_fr": nameFr,
        "score": score,
        "version": versionValues.reverse[version],
        "agribalyse_food_code": agribalyseFoodCode,
        "warning": agribalyseWarningValues.reverse[warning],
    };
}

enum Version {
    THE_31,
    THE_311
}

final versionValues = EnumValues({
    "3.1": Version.THE_31,
    "3.1.1": Version.THE_311
});

enum AgribalyseWarning {
    MISSING_AGRIBALYSE_MATCH
}

final agribalyseWarningValues = EnumValues({
    "missing_agribalyse_match": AgribalyseWarning.MISSING_AGRIBALYSE_MATCH
});

enum EcoscoreGrade {
    A,
    B,
    C,
    D,
    E,
    UNKNOWN
}

final ecoscoreGradeValues = EnumValues({
    "a": EcoscoreGrade.A,
    "b": EcoscoreGrade.B,
    "c": EcoscoreGrade.C,
    "d": EcoscoreGrade.D,
    "e": EcoscoreGrade.E,
    "unknown": EcoscoreGrade.UNKNOWN
});

class Missing {
    int? origins;
    int? packagings;
    int? labels;
    int? agbCategory;
    int? ingredients;

    Missing({
        this.origins,
        this.packagings,
        this.labels,
        this.agbCategory,
        this.ingredients,
    });

    factory Missing.fromJson(Map<String, dynamic> json) => Missing(
        origins: json["origins"],
        packagings: json["packagings"],
        labels: json["labels"],
        agbCategory: json["agb_category"],
        ingredients: json["ingredients"],
    );

    Map<String, dynamic> toJson() => {
        "origins": origins,
        "packagings": packagings,
        "labels": labels,
        "agb_category": agbCategory,
        "ingredients": ingredients,
    };
}

class PreviousData {
    Agribalyse? agribalyse;
    EcoscoreGrade? grade;
    int? score;

    PreviousData({
        this.agribalyse,
        this.grade,
        this.score,
    });

    factory PreviousData.fromJson(Map<String, dynamic> json) => PreviousData(
        agribalyse: json["agribalyse"] == null ? null : Agribalyse.fromJson(json["agribalyse"]),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "agribalyse": agribalyse?.toJson(),
        "grade": ecoscoreGradeValues.reverse[grade],
        "score": score,
    };
}

enum Status {
    KNOWN,
    UNKNOWN
}

final statusValues = EnumValues({
    "known": Status.KNOWN,
    "unknown": Status.UNKNOWN
});

class EcoscoreExtendedData {
    Impact? impact;
    String? error;

    EcoscoreExtendedData({
        this.impact,
        this.error,
    });

    factory EcoscoreExtendedData.fromJson(Map<String, dynamic> json) => EcoscoreExtendedData(
        impact: json["impact"] == null ? null : Impact.fromJson(json["impact"]),
        error: json["error"],
    );

    Map<String, dynamic> toJson() => {
        "impact": impact?.toJson(),
        "error": error,
    };
}

class Impact {
    double? efSingleScoreLogStddev;
    ImpactsGeomMeans? likeliestImpacts;
    Map<String, double>? likeliestRecipe;
    double? massRatioUncharacterized;
    UncharacterizedIngredients? uncharacterizedIngredients;
    UncharacterizedIngredientsMassProportionClass? uncharacterizedIngredientsMassProportion;
    UncharacterizedIngredientsMassProportionClass? uncharacterizedIngredientsRatio;
    List<String>? warnings;
    double? averageTotalUsedMass;
    double? calculationTime;
    List<double>? confidenceScoreDistribution;
    int? constRelaxCoef;
    Map<String, DataSource>? dataSources;
    List<dynamic>? ignoredUnknownIngredients;
    ImpactDistributions? impactDistributions;
    ImpactsGeomMeans? impactsGeomMeans;
    ImpactsGeomMeans? impactsGeomStdevs;
    ImpactsQuantiles? impactsQuantiles;
    ImpactsGeomMeans? impactsRelativeInterquartile;
    ImpactsUnits? impactsUnits;
    ImpactsQuantiles? ingredientsImpactsShare;
    Map<String, double>? ingredientsMassShare;
    MeanConfidenceIntervalDistribution? meanConfidenceIntervalDistribution;
    int? numberOfIngredients;
    int? numberOfRuns;
    int? productQuantity;
    List<Map<String, double>>? recipes;
    int? reliability;
    List<double>? totalUsedMassDistribution;

    Impact({
        this.efSingleScoreLogStddev,
        this.likeliestImpacts,
        this.likeliestRecipe,
        this.massRatioUncharacterized,
        this.uncharacterizedIngredients,
        this.uncharacterizedIngredientsMassProportion,
        this.uncharacterizedIngredientsRatio,
        this.warnings,
        this.averageTotalUsedMass,
        this.calculationTime,
        this.confidenceScoreDistribution,
        this.constRelaxCoef,
        this.dataSources,
        this.ignoredUnknownIngredients,
        this.impactDistributions,
        this.impactsGeomMeans,
        this.impactsGeomStdevs,
        this.impactsQuantiles,
        this.impactsRelativeInterquartile,
        this.impactsUnits,
        this.ingredientsImpactsShare,
        this.ingredientsMassShare,
        this.meanConfidenceIntervalDistribution,
        this.numberOfIngredients,
        this.numberOfRuns,
        this.productQuantity,
        this.recipes,
        this.reliability,
        this.totalUsedMassDistribution,
    });

    factory Impact.fromJson(Map<String, dynamic> json) => Impact(
        efSingleScoreLogStddev: json["ef_single_score_log_stddev"]?.toDouble(),
        likeliestImpacts: json["likeliest_impacts"] == null ? null : ImpactsGeomMeans.fromJson(json["likeliest_impacts"]),
        likeliestRecipe: Map.from(json["likeliest_recipe"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        massRatioUncharacterized: json["mass_ratio_uncharacterized"]?.toDouble(),
        uncharacterizedIngredients: json["uncharacterized_ingredients"] == null ? null : UncharacterizedIngredients.fromJson(json["uncharacterized_ingredients"]),
        uncharacterizedIngredientsMassProportion: json["uncharacterized_ingredients_mass_proportion"] == null ? null : UncharacterizedIngredientsMassProportionClass.fromJson(json["uncharacterized_ingredients_mass_proportion"]),
        uncharacterizedIngredientsRatio: json["uncharacterized_ingredients_ratio"] == null ? null : UncharacterizedIngredientsMassProportionClass.fromJson(json["uncharacterized_ingredients_ratio"]),
        warnings: json["warnings"] == null ? [] : List<String>.from(json["warnings"]!.map((x) => x)),
        averageTotalUsedMass: json["average_total_used_mass"]?.toDouble(),
        calculationTime: json["calculation_time"]?.toDouble(),
        confidenceScoreDistribution: json["confidence_score_distribution"] == null ? [] : List<double>.from(json["confidence_score_distribution"]!.map((x) => x?.toDouble())),
        constRelaxCoef: json["const_relax_coef"],
        dataSources: Map.from(json["data_sources"]!).map((k, v) => MapEntry<String, DataSource>(k, DataSource.fromJson(v))),
        ignoredUnknownIngredients: json["ignored_unknown_ingredients"] == null ? [] : List<dynamic>.from(json["ignored_unknown_ingredients"]!.map((x) => x)),
        impactDistributions: json["impact_distributions"] == null ? null : ImpactDistributions.fromJson(json["impact_distributions"]),
        impactsGeomMeans: json["impacts_geom_means"] == null ? null : ImpactsGeomMeans.fromJson(json["impacts_geom_means"]),
        impactsGeomStdevs: json["impacts_geom_stdevs"] == null ? null : ImpactsGeomMeans.fromJson(json["impacts_geom_stdevs"]),
        impactsQuantiles: json["impacts_quantiles"] == null ? null : ImpactsQuantiles.fromJson(json["impacts_quantiles"]),
        impactsRelativeInterquartile: json["impacts_relative_interquartile"] == null ? null : ImpactsGeomMeans.fromJson(json["impacts_relative_interquartile"]),
        impactsUnits: json["impacts_units"] == null ? null : ImpactsUnits.fromJson(json["impacts_units"]),
        ingredientsImpactsShare: json["ingredients_impacts_share"] == null ? null : ImpactsQuantiles.fromJson(json["ingredients_impacts_share"]),
        ingredientsMassShare: Map.from(json["ingredients_mass_share"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        meanConfidenceIntervalDistribution: json["mean_confidence_interval_distribution"] == null ? null : MeanConfidenceIntervalDistribution.fromJson(json["mean_confidence_interval_distribution"]),
        numberOfIngredients: json["number_of_ingredients"],
        numberOfRuns: json["number_of_runs"],
        productQuantity: json["product_quantity"],
        recipes: json["recipes"] == null ? [] : List<Map<String, double>>.from(json["recipes"]!.map((x) => Map.from(x).map((k, v) => MapEntry<String, double>(k, v?.toDouble())))),
        reliability: json["reliability"],
        totalUsedMassDistribution: json["total_used_mass_distribution"] == null ? [] : List<double>.from(json["total_used_mass_distribution"]!.map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "ef_single_score_log_stddev": efSingleScoreLogStddev,
        "likeliest_impacts": likeliestImpacts?.toJson(),
        "likeliest_recipe": Map.from(likeliestRecipe!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mass_ratio_uncharacterized": massRatioUncharacterized,
        "uncharacterized_ingredients": uncharacterizedIngredients?.toJson(),
        "uncharacterized_ingredients_mass_proportion": uncharacterizedIngredientsMassProportion?.toJson(),
        "uncharacterized_ingredients_ratio": uncharacterizedIngredientsRatio?.toJson(),
        "warnings": warnings == null ? [] : List<dynamic>.from(warnings!.map((x) => x)),
        "average_total_used_mass": averageTotalUsedMass,
        "calculation_time": calculationTime,
        "confidence_score_distribution": confidenceScoreDistribution == null ? [] : List<dynamic>.from(confidenceScoreDistribution!.map((x) => x)),
        "const_relax_coef": constRelaxCoef,
        "data_sources": Map.from(dataSources!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "ignored_unknown_ingredients": ignoredUnknownIngredients == null ? [] : List<dynamic>.from(ignoredUnknownIngredients!.map((x) => x)),
        "impact_distributions": impactDistributions?.toJson(),
        "impacts_geom_means": impactsGeomMeans?.toJson(),
        "impacts_geom_stdevs": impactsGeomStdevs?.toJson(),
        "impacts_quantiles": impactsQuantiles?.toJson(),
        "impacts_relative_interquartile": impactsRelativeInterquartile?.toJson(),
        "impacts_units": impactsUnits?.toJson(),
        "ingredients_impacts_share": ingredientsImpactsShare?.toJson(),
        "ingredients_mass_share": Map.from(ingredientsMassShare!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mean_confidence_interval_distribution": meanConfidenceIntervalDistribution?.toJson(),
        "number_of_ingredients": numberOfIngredients,
        "number_of_runs": numberOfRuns,
        "product_quantity": productQuantity,
        "recipes": recipes == null ? [] : List<dynamic>.from(recipes!.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
        "reliability": reliability,
        "total_used_mass_distribution": totalUsedMassDistribution == null ? [] : List<dynamic>.from(totalUsedMassDistribution!.map((x) => x)),
    };
}

class DataSource {
    List<EnvironmentalImpact>? environmentalImpact;
    List<EnvironmentalImpact>? nutrition;

    DataSource({
        this.environmentalImpact,
        this.nutrition,
    });

    factory DataSource.fromJson(Map<String, dynamic> json) => DataSource(
        environmentalImpact: json["environmental_impact"] == null ? [] : List<EnvironmentalImpact>.from(json["environmental_impact"]!.map((x) => EnvironmentalImpact.fromJson(x))),
        nutrition: json["nutrition"] == null ? [] : List<EnvironmentalImpact>.from(json["nutrition"]!.map((x) => EnvironmentalImpact.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "environmental_impact": environmentalImpact == null ? [] : List<dynamic>.from(environmentalImpact!.map((x) => x.toJson())),
        "nutrition": nutrition == null ? [] : List<dynamic>.from(nutrition!.map((x) => x.toJson())),
    };
}

class EnvironmentalImpact {
    Database? database;
    String? entry;

    EnvironmentalImpact({
        this.database,
        this.entry,
    });

    factory EnvironmentalImpact.fromJson(Map<String, dynamic> json) => EnvironmentalImpact(
        database: databaseValues.map[json["database"]]!,
        entry: json["entry"],
    );

    Map<String, dynamic> toJson() => {
        "database": databaseValues.reverse[database],
        "entry": entry,
    };
}

enum Database {
    AGRIBALYSE,
    CIQUAL
}

final databaseValues = EnumValues({
    "agribalyse": Database.AGRIBALYSE,
    "ciqual": Database.CIQUAL
});

class ImpactDistributions {
    List<double>? climateChange;
    List<double>? efSingleScore;

    ImpactDistributions({
        this.climateChange,
        this.efSingleScore,
    });

    factory ImpactDistributions.fromJson(Map<String, dynamic> json) => ImpactDistributions(
        climateChange: json["Climate_change"] == null ? [] : List<double>.from(json["Climate_change"]!.map((x) => x?.toDouble())),
        efSingleScore: json["EF_single_score"] == null ? [] : List<double>.from(json["EF_single_score"]!.map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "Climate_change": climateChange == null ? [] : List<dynamic>.from(climateChange!.map((x) => x)),
        "EF_single_score": efSingleScore == null ? [] : List<dynamic>.from(efSingleScore!.map((x) => x)),
    };
}

class ImpactsGeomMeans {
    double? climateChange;
    double? efSingleScore;

    ImpactsGeomMeans({
        this.climateChange,
        this.efSingleScore,
    });

    factory ImpactsGeomMeans.fromJson(Map<String, dynamic> json) => ImpactsGeomMeans(
        climateChange: json["Climate_change"]?.toDouble(),
        efSingleScore: json["EF_single_score"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "Climate_change": climateChange,
        "EF_single_score": efSingleScore,
    };
}

class ImpactsQuantiles {
    Map<String, double>? climateChange;
    Map<String, double>? efSingleScore;

    ImpactsQuantiles({
        this.climateChange,
        this.efSingleScore,
    });

    factory ImpactsQuantiles.fromJson(Map<String, dynamic> json) => ImpactsQuantiles(
        climateChange: Map.from(json["Climate_change"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        efSingleScore: Map.from(json["EF_single_score"]!).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "Climate_change": Map.from(climateChange!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "EF_single_score": Map.from(efSingleScore!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

class ImpactsUnits {
    String? climateChange;
    String? efSingleScore;

    ImpactsUnits({
        this.climateChange,
        this.efSingleScore,
    });

    factory ImpactsUnits.fromJson(Map<String, dynamic> json) => ImpactsUnits(
        climateChange: json["Climate_change"],
        efSingleScore: json["EF_single_score"],
    );

    Map<String, dynamic> toJson() => {
        "Climate_change": climateChange,
        "EF_single_score": efSingleScore,
    };
}

class MeanConfidenceIntervalDistribution {
    List<List<double>>? climateChange;
    List<List<double>>? efSingleScore;

    MeanConfidenceIntervalDistribution({
        this.climateChange,
        this.efSingleScore,
    });

    factory MeanConfidenceIntervalDistribution.fromJson(Map<String, dynamic> json) => MeanConfidenceIntervalDistribution(
        climateChange: json["Climate_change"] == null ? [] : List<List<double>>.from(json["Climate_change"]!.map((x) => List<double>.from(x.map((x) => x?.toDouble())))),
        efSingleScore: json["EF_single_score"] == null ? [] : List<List<double>>.from(json["EF_single_score"]!.map((x) => List<double>.from(x.map((x) => x?.toDouble())))),
    );

    Map<String, dynamic> toJson() => {
        "Climate_change": climateChange == null ? [] : List<dynamic>.from(climateChange!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "EF_single_score": efSingleScore == null ? [] : List<dynamic>.from(efSingleScore!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };
}

class UncharacterizedIngredients {
    List<String>? impact;
    List<String>? nutrition;

    UncharacterizedIngredients({
        this.impact,
        this.nutrition,
    });

    factory UncharacterizedIngredients.fromJson(Map<String, dynamic> json) => UncharacterizedIngredients(
        impact: json["impact"] == null ? [] : List<String>.from(json["impact"]!.map((x) => x)),
        nutrition: json["nutrition"] == null ? [] : List<String>.from(json["nutrition"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "impact": impact == null ? [] : List<dynamic>.from(impact!.map((x) => x)),
        "nutrition": nutrition == null ? [] : List<dynamic>.from(nutrition!.map((x) => x)),
    };
}

class UncharacterizedIngredientsMassProportionClass {
    double? impact;
    double? nutrition;

    UncharacterizedIngredientsMassProportionClass({
        this.impact,
        this.nutrition,
    });

    factory UncharacterizedIngredientsMassProportionClass.fromJson(Map<String, dynamic> json) => UncharacterizedIngredientsMassProportionClass(
        impact: json["impact"]?.toDouble(),
        nutrition: json["nutrition"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "impact": impact,
        "nutrition": nutrition,
    };
}

enum FoodGroups {
    EN_COMPOSITE_FOODS,
    EN_FATTY_FISH,
    EN_FISH_AND_SEAFOOD,
    EN_FISH_MEAT_EGGS,
    EN_LEAN_FISH,
    EN_ONE_DISH_MEALS,
    EN_SALTY_AND_FATTY_PRODUCTS,
    EN_SALTY_SNACKS
}

final foodGroupsValues = EnumValues({
    "en:composite-foods": FoodGroups.EN_COMPOSITE_FOODS,
    "en:fatty-fish": FoodGroups.EN_FATTY_FISH,
    "en:fish-and-seafood": FoodGroups.EN_FISH_AND_SEAFOOD,
    "en:fish-meat-eggs": FoodGroups.EN_FISH_MEAT_EGGS,
    "en:lean-fish": FoodGroups.EN_LEAN_FISH,
    "en:one-dish-meals": FoodGroups.EN_ONE_DISH_MEALS,
    "en:salty-and-fatty-products": FoodGroups.EN_SALTY_AND_FATTY_PRODUCTS,
    "en:salty-snacks": FoodGroups.EN_SALTY_SNACKS
});

class ForestFootprintData {
    double? footprintPerKg;
    EcoscoreGrade? grade;
    List<ForestFootprintDataIngredient>? ingredients;

    ForestFootprintData({
        this.footprintPerKg,
        this.grade,
        this.ingredients,
    });

    factory ForestFootprintData.fromJson(Map<String, dynamic> json) => ForestFootprintData(
        footprintPerKg: json["footprint_per_kg"]?.toDouble(),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        ingredients: json["ingredients"] == null ? [] : List<ForestFootprintDataIngredient>.from(json["ingredients"]!.map((x) => ForestFootprintDataIngredient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "footprint_per_kg": footprintPerKg,
        "grade": ecoscoreGradeValues.reverse[grade],
        "ingredients": ingredients == null ? [] : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
    };
}

class ForestFootprintDataIngredient {
    List<List<String>>? conditionsTags;
    double? footprintPerKg;
    MatchingTagId? matchingTagId;
    double? percent;
    double? percentEstimate;
    int? processingFactor;
    String? tagId;
    TagType? tagType;
    Type? type;

    ForestFootprintDataIngredient({
        this.conditionsTags,
        this.footprintPerKg,
        this.matchingTagId,
        this.percent,
        this.percentEstimate,
        this.processingFactor,
        this.tagId,
        this.tagType,
        this.type,
    });

    factory ForestFootprintDataIngredient.fromJson(Map<String, dynamic> json) => ForestFootprintDataIngredient(
        conditionsTags: json["conditions_tags"] == null ? [] : List<List<String>>.from(json["conditions_tags"]!.map((x) => List<String>.from(x.map((x) => x)))),
        footprintPerKg: json["footprint_per_kg"]?.toDouble(),
        matchingTagId: matchingTagIdValues.map[json["matching_tag_id"]]!,
        percent: json["percent"]?.toDouble(),
        percentEstimate: json["percent_estimate"]?.toDouble(),
        processingFactor: json["processing_factor"],
        tagId: json["tag_id"],
        tagType: tagTypeValues.map[json["tag_type"]]!,
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "conditions_tags": conditionsTags == null ? [] : List<dynamic>.from(conditionsTags!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "footprint_per_kg": footprintPerKg,
        "matching_tag_id": matchingTagIdValues.reverse[matchingTagId],
        "percent": percent,
        "percent_estimate": percentEstimate,
        "processing_factor": processingFactor,
        "tag_id": tagId,
        "tag_type": tagTypeValues.reverse[tagType],
        "type": type?.toJson(),
    };
}

enum MatchingTagId {
    EN_EGG
}

final matchingTagIdValues = EnumValues({
    "en:egg": MatchingTagId.EN_EGG
});

enum TagType {
    INGREDIENTS
}

final tagTypeValues = EnumValues({
    "ingredients": TagType.INGREDIENTS
});

class Type {
    double? deforestationRisk;
    TypeName? name;
    double? soyFeedFactor;
    double? soyYield;

    Type({
        this.deforestationRisk,
        this.name,
        this.soyFeedFactor,
        this.soyYield,
    });

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        deforestationRisk: json["deforestation_risk"]?.toDouble(),
        name: typeNameValues.map[json["name"]]!,
        soyFeedFactor: json["soy_feed_factor"]?.toDouble(),
        soyYield: json["soy_yield"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "deforestation_risk": deforestationRisk,
        "name": typeNameValues.reverse[name],
        "soy_feed_factor": soyFeedFactor,
        "soy_yield": soyYield,
    };
}

enum TypeName {
    OEUFS_IMPORTS,
    OEUFS_STANDARDS
}

final typeNameValues = EnumValues({
    "Oeufs Importés": TypeName.OEUFS_IMPORTS,
    "Oeufs standards": TypeName.OEUFS_STANDARDS
});

enum GenericNameEn {
    ALASKA_POLLOCK_FILLET_FISH_FINGERS_LIGHTLY_FRIED,
    ALASKA_POLLOCK_FILLET_FISH_FINGERS_PREFRIED,
    EMPTY
}

final genericNameEnValues = EnumValues({
    "Alaska pollock fillet fish fingers, lightly fried": GenericNameEn.ALASKA_POLLOCK_FILLET_FISH_FINGERS_LIGHTLY_FRIED,
    "Alaska pollock fillet fish fingers, prefried": GenericNameEn.ALASKA_POLLOCK_FILLET_FISH_FINGERS_PREFRIED,
    "": GenericNameEn.EMPTY
});

class Grades {
    Grades();

    factory Grades.fromJson(Map<String, dynamic> json) => Grades(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Images {
    The1? the1;
    The1? the2;
    The1? the3;
    The1? the4;
    The1? the5;
    The1? the6;
    The1? the7;
    The1? the8;
    The1? the9;
    The1? the11;
    The1? the12;
    The1? the13;
    The1? the14;
    The1? the15;
    The1? the16;
    The1? the17;
    The1? the18;
    The1? the19;
    The1? the20;
    The1? the21;
    The1? the22;
    The1? the23;
    The1? the24;
    The1? the25;
    The1? the26;
    The1? the27;
    The102? the28;
    The102? the29;
    The1? the30;
    The1? the31;
    The102? the32;
    The102? the33;
    The102? the34;
    The1? the35;
    The1? the36;
    The102? the37;
    The102? the38;
    The102? the39;
    The102? the40;
    The102? the41;
    The102? the42;
    The102? the43;
    The102? the44;
    The102? the45;
    The102? the46;
    The102? the47;
    The102? the48;
    The102? the49;
    The102? the50;
    The102? the51;
    The102? the52;
    The102? the53;
    The102? the54;
    The102? the55;
    The102? the56;
    The102? the57;
    The102? the58;
    The1? the59;
    The102? the60;
    The102? the61;
    The102? the62;
    The102? the63;
    The102? the64;
    The102? the65;
    The102? the66;
    The102? the67;
    The102? the68;
    The102? the69;
    The102? the70;
    FrontEn? frontEn;
    FrontEn? frontFr;
    FrontEn? ingredientsFr;
    FrontEn? nutritionFr;
    FrontEn? packagingFr;
    The1? the10;
    IngredientsClass? ingredients;
    FrontEn? nutritionEn;
    IngredientsClass? front;
    IngredientsClass? nutrition;
    The102? the71;
    The102? the73;
    The102? the74;
    The102? the75;
    The102? the76;
    The102? the77;
    The102? the78;
    The102? the79;
    The102? the80;
    The102? the81;
    The102? the82;
    The102? the83;
    The102? the84;
    The102? the85;
    The102? the86;
    The102? the87;
    The102? the88;
    The102? the89;
    The102? the90;
    The102? the91;
    The102? the92;
    The102? the93;
    The102? the94;
    The102? the95;
    The102? the96;
    The102? the97;
    The102? the98;
    The1? the100;
    The1? the101;
    The102? the102;
    The102? the103;
    The102? the104;
    FrontDe? frontDe;
    FrontDe? frontFi;
    FrontEn? ingredientsDe;
    FrontDe? ingredientsFi;
    FrontDe? nutritionDe;
    FrontDe? nutritionFi;
    FrontDe? packagingFi;
    FrontEn? packagingEn;
    FrontDe? frontIt;
    FrontDe? ingredientsIt;
    FrontDe? nutritionIt;
    FrontCs? frontCs;
    FrontDe? packagingIt;
    IngredientsNewLc? ingredientsNewLc;
    FrontEn? ingredientsEn;
    FrontDe? ingredientsBg;
    FrontDe? ingredientsRo;
    FrontDe? nutritionBg;
    The102? the72;
    The102? the99;
    The102? the105;
    The102? the106;
    The102? the107;
    The102? the108;
    The102? the109;
    The102? the110;

    Images({
        this.the1,
        this.the2,
        this.the3,
        this.the4,
        this.the5,
        this.the6,
        this.the7,
        this.the8,
        this.the9,
        this.the11,
        this.the12,
        this.the13,
        this.the14,
        this.the15,
        this.the16,
        this.the17,
        this.the18,
        this.the19,
        this.the20,
        this.the21,
        this.the22,
        this.the23,
        this.the24,
        this.the25,
        this.the26,
        this.the27,
        this.the28,
        this.the29,
        this.the30,
        this.the31,
        this.the32,
        this.the33,
        this.the34,
        this.the35,
        this.the36,
        this.the37,
        this.the38,
        this.the39,
        this.the40,
        this.the41,
        this.the42,
        this.the43,
        this.the44,
        this.the45,
        this.the46,
        this.the47,
        this.the48,
        this.the49,
        this.the50,
        this.the51,
        this.the52,
        this.the53,
        this.the54,
        this.the55,
        this.the56,
        this.the57,
        this.the58,
        this.the59,
        this.the60,
        this.the61,
        this.the62,
        this.the63,
        this.the64,
        this.the65,
        this.the66,
        this.the67,
        this.the68,
        this.the69,
        this.the70,
        this.frontEn,
        this.frontFr,
        this.ingredientsFr,
        this.nutritionFr,
        this.packagingFr,
        this.the10,
        this.ingredients,
        this.nutritionEn,
        this.front,
        this.nutrition,
        this.the71,
        this.the73,
        this.the74,
        this.the75,
        this.the76,
        this.the77,
        this.the78,
        this.the79,
        this.the80,
        this.the81,
        this.the82,
        this.the83,
        this.the84,
        this.the85,
        this.the86,
        this.the87,
        this.the88,
        this.the89,
        this.the90,
        this.the91,
        this.the92,
        this.the93,
        this.the94,
        this.the95,
        this.the96,
        this.the97,
        this.the98,
        this.the100,
        this.the101,
        this.the102,
        this.the103,
        this.the104,
        this.frontDe,
        this.frontFi,
        this.ingredientsDe,
        this.ingredientsFi,
        this.nutritionDe,
        this.nutritionFi,
        this.packagingFi,
        this.packagingEn,
        this.frontIt,
        this.ingredientsIt,
        this.nutritionIt,
        this.frontCs,
        this.packagingIt,
        this.ingredientsNewLc,
        this.ingredientsEn,
        this.ingredientsBg,
        this.ingredientsRo,
        this.nutritionBg,
        this.the72,
        this.the99,
        this.the105,
        this.the106,
        this.the107,
        this.the108,
        this.the109,
        this.the110,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        the1: json["1"] == null ? null : The1.fromJson(json["1"]),
        the2: json["2"] == null ? null : The1.fromJson(json["2"]),
        the3: json["3"] == null ? null : The1.fromJson(json["3"]),
        the4: json["4"] == null ? null : The1.fromJson(json["4"]),
        the5: json["5"] == null ? null : The1.fromJson(json["5"]),
        the6: json["6"] == null ? null : The1.fromJson(json["6"]),
        the7: json["7"] == null ? null : The1.fromJson(json["7"]),
        the8: json["8"] == null ? null : The1.fromJson(json["8"]),
        the9: json["9"] == null ? null : The1.fromJson(json["9"]),
        the11: json["11"] == null ? null : The1.fromJson(json["11"]),
        the12: json["12"] == null ? null : The1.fromJson(json["12"]),
        the13: json["13"] == null ? null : The1.fromJson(json["13"]),
        the14: json["14"] == null ? null : The1.fromJson(json["14"]),
        the15: json["15"] == null ? null : The1.fromJson(json["15"]),
        the16: json["16"] == null ? null : The1.fromJson(json["16"]),
        the17: json["17"] == null ? null : The1.fromJson(json["17"]),
        the18: json["18"] == null ? null : The1.fromJson(json["18"]),
        the19: json["19"] == null ? null : The1.fromJson(json["19"]),
        the20: json["20"] == null ? null : The1.fromJson(json["20"]),
        the21: json["21"] == null ? null : The1.fromJson(json["21"]),
        the22: json["22"] == null ? null : The1.fromJson(json["22"]),
        the23: json["23"] == null ? null : The1.fromJson(json["23"]),
        the24: json["24"] == null ? null : The1.fromJson(json["24"]),
        the25: json["25"] == null ? null : The1.fromJson(json["25"]),
        the26: json["26"] == null ? null : The1.fromJson(json["26"]),
        the27: json["27"] == null ? null : The1.fromJson(json["27"]),
        the28: json["28"] == null ? null : The102.fromJson(json["28"]),
        the29: json["29"] == null ? null : The102.fromJson(json["29"]),
        the30: json["30"] == null ? null : The1.fromJson(json["30"]),
        the31: json["31"] == null ? null : The1.fromJson(json["31"]),
        the32: json["32"] == null ? null : The102.fromJson(json["32"]),
        the33: json["33"] == null ? null : The102.fromJson(json["33"]),
        the34: json["34"] == null ? null : The102.fromJson(json["34"]),
        the35: json["35"] == null ? null : The1.fromJson(json["35"]),
        the36: json["36"] == null ? null : The1.fromJson(json["36"]),
        the37: json["37"] == null ? null : The102.fromJson(json["37"]),
        the38: json["38"] == null ? null : The102.fromJson(json["38"]),
        the39: json["39"] == null ? null : The102.fromJson(json["39"]),
        the40: json["40"] == null ? null : The102.fromJson(json["40"]),
        the41: json["41"] == null ? null : The102.fromJson(json["41"]),
        the42: json["42"] == null ? null : The102.fromJson(json["42"]),
        the43: json["43"] == null ? null : The102.fromJson(json["43"]),
        the44: json["44"] == null ? null : The102.fromJson(json["44"]),
        the45: json["45"] == null ? null : The102.fromJson(json["45"]),
        the46: json["46"] == null ? null : The102.fromJson(json["46"]),
        the47: json["47"] == null ? null : The102.fromJson(json["47"]),
        the48: json["48"] == null ? null : The102.fromJson(json["48"]),
        the49: json["49"] == null ? null : The102.fromJson(json["49"]),
        the50: json["50"] == null ? null : The102.fromJson(json["50"]),
        the51: json["51"] == null ? null : The102.fromJson(json["51"]),
        the52: json["52"] == null ? null : The102.fromJson(json["52"]),
        the53: json["53"] == null ? null : The102.fromJson(json["53"]),
        the54: json["54"] == null ? null : The102.fromJson(json["54"]),
        the55: json["55"] == null ? null : The102.fromJson(json["55"]),
        the56: json["56"] == null ? null : The102.fromJson(json["56"]),
        the57: json["57"] == null ? null : The102.fromJson(json["57"]),
        the58: json["58"] == null ? null : The102.fromJson(json["58"]),
        the59: json["59"] == null ? null : The1.fromJson(json["59"]),
        the60: json["60"] == null ? null : The102.fromJson(json["60"]),
        the61: json["61"] == null ? null : The102.fromJson(json["61"]),
        the62: json["62"] == null ? null : The102.fromJson(json["62"]),
        the63: json["63"] == null ? null : The102.fromJson(json["63"]),
        the64: json["64"] == null ? null : The102.fromJson(json["64"]),
        the65: json["65"] == null ? null : The102.fromJson(json["65"]),
        the66: json["66"] == null ? null : The102.fromJson(json["66"]),
        the67: json["67"] == null ? null : The102.fromJson(json["67"]),
        the68: json["68"] == null ? null : The102.fromJson(json["68"]),
        the69: json["69"] == null ? null : The102.fromJson(json["69"]),
        the70: json["70"] == null ? null : The102.fromJson(json["70"]),
        frontEn: json["front_en"] == null ? null : FrontEn.fromJson(json["front_en"]),
        frontFr: json["front_fr"] == null ? null : FrontEn.fromJson(json["front_fr"]),
        ingredientsFr: json["ingredients_fr"] == null ? null : FrontEn.fromJson(json["ingredients_fr"]),
        nutritionFr: json["nutrition_fr"] == null ? null : FrontEn.fromJson(json["nutrition_fr"]),
        packagingFr: json["packaging_fr"] == null ? null : FrontEn.fromJson(json["packaging_fr"]),
        the10: json["10"] == null ? null : The1.fromJson(json["10"]),
        ingredients: json["ingredients"] == null ? null : IngredientsClass.fromJson(json["ingredients"]),
        nutritionEn: json["nutrition_en"] == null ? null : FrontEn.fromJson(json["nutrition_en"]),
        front: json["front"] == null ? null : IngredientsClass.fromJson(json["front"]),
        nutrition: json["nutrition"] == null ? null : IngredientsClass.fromJson(json["nutrition"]),
        the71: json["71"] == null ? null : The102.fromJson(json["71"]),
        the73: json["73"] == null ? null : The102.fromJson(json["73"]),
        the74: json["74"] == null ? null : The102.fromJson(json["74"]),
        the75: json["75"] == null ? null : The102.fromJson(json["75"]),
        the76: json["76"] == null ? null : The102.fromJson(json["76"]),
        the77: json["77"] == null ? null : The102.fromJson(json["77"]),
        the78: json["78"] == null ? null : The102.fromJson(json["78"]),
        the79: json["79"] == null ? null : The102.fromJson(json["79"]),
        the80: json["80"] == null ? null : The102.fromJson(json["80"]),
        the81: json["81"] == null ? null : The102.fromJson(json["81"]),
        the82: json["82"] == null ? null : The102.fromJson(json["82"]),
        the83: json["83"] == null ? null : The102.fromJson(json["83"]),
        the84: json["84"] == null ? null : The102.fromJson(json["84"]),
        the85: json["85"] == null ? null : The102.fromJson(json["85"]),
        the86: json["86"] == null ? null : The102.fromJson(json["86"]),
        the87: json["87"] == null ? null : The102.fromJson(json["87"]),
        the88: json["88"] == null ? null : The102.fromJson(json["88"]),
        the89: json["89"] == null ? null : The102.fromJson(json["89"]),
        the90: json["90"] == null ? null : The102.fromJson(json["90"]),
        the91: json["91"] == null ? null : The102.fromJson(json["91"]),
        the92: json["92"] == null ? null : The102.fromJson(json["92"]),
        the93: json["93"] == null ? null : The102.fromJson(json["93"]),
        the94: json["94"] == null ? null : The102.fromJson(json["94"]),
        the95: json["95"] == null ? null : The102.fromJson(json["95"]),
        the96: json["96"] == null ? null : The102.fromJson(json["96"]),
        the97: json["97"] == null ? null : The102.fromJson(json["97"]),
        the98: json["98"] == null ? null : The102.fromJson(json["98"]),
        the100: json["100"] == null ? null : The1.fromJson(json["100"]),
        the101: json["101"] == null ? null : The1.fromJson(json["101"]),
        the102: json["102"] == null ? null : The102.fromJson(json["102"]),
        the103: json["103"] == null ? null : The102.fromJson(json["103"]),
        the104: json["104"] == null ? null : The102.fromJson(json["104"]),
        frontDe: json["front_de"] == null ? null : FrontDe.fromJson(json["front_de"]),
        frontFi: json["front_fi"] == null ? null : FrontDe.fromJson(json["front_fi"]),
        ingredientsDe: json["ingredients_de"] == null ? null : FrontEn.fromJson(json["ingredients_de"]),
        ingredientsFi: json["ingredients_fi"] == null ? null : FrontDe.fromJson(json["ingredients_fi"]),
        nutritionDe: json["nutrition_de"] == null ? null : FrontDe.fromJson(json["nutrition_de"]),
        nutritionFi: json["nutrition_fi"] == null ? null : FrontDe.fromJson(json["nutrition_fi"]),
        packagingFi: json["packaging_fi"] == null ? null : FrontDe.fromJson(json["packaging_fi"]),
        packagingEn: json["packaging_en"] == null ? null : FrontEn.fromJson(json["packaging_en"]),
        frontIt: json["front_it"] == null ? null : FrontDe.fromJson(json["front_it"]),
        ingredientsIt: json["ingredients_it"] == null ? null : FrontDe.fromJson(json["ingredients_it"]),
        nutritionIt: json["nutrition_it"] == null ? null : FrontDe.fromJson(json["nutrition_it"]),
        frontCs: json["front_cs"] == null ? null : FrontCs.fromJson(json["front_cs"]),
        packagingIt: json["packaging_it"] == null ? null : FrontDe.fromJson(json["packaging_it"]),
        ingredientsNewLc: json["ingredients_new_lc"] == null ? null : IngredientsNewLc.fromJson(json["ingredients_new_lc"]),
        ingredientsEn: json["ingredients_en"] == null ? null : FrontEn.fromJson(json["ingredients_en"]),
        ingredientsBg: json["ingredients_bg"] == null ? null : FrontDe.fromJson(json["ingredients_bg"]),
        ingredientsRo: json["ingredients_ro"] == null ? null : FrontDe.fromJson(json["ingredients_ro"]),
        nutritionBg: json["nutrition_bg"] == null ? null : FrontDe.fromJson(json["nutrition_bg"]),
        the72: json["72"] == null ? null : The102.fromJson(json["72"]),
        the99: json["99"] == null ? null : The102.fromJson(json["99"]),
        the105: json["105"] == null ? null : The102.fromJson(json["105"]),
        the106: json["106"] == null ? null : The102.fromJson(json["106"]),
        the107: json["107"] == null ? null : The102.fromJson(json["107"]),
        the108: json["108"] == null ? null : The102.fromJson(json["108"]),
        the109: json["109"] == null ? null : The102.fromJson(json["109"]),
        the110: json["110"] == null ? null : The102.fromJson(json["110"]),
    );

    Map<String, dynamic> toJson() => {
        "1": the1?.toJson(),
        "2": the2?.toJson(),
        "3": the3?.toJson(),
        "4": the4?.toJson(),
        "5": the5?.toJson(),
        "6": the6?.toJson(),
        "7": the7?.toJson(),
        "8": the8?.toJson(),
        "9": the9?.toJson(),
        "11": the11?.toJson(),
        "12": the12?.toJson(),
        "13": the13?.toJson(),
        "14": the14?.toJson(),
        "15": the15?.toJson(),
        "16": the16?.toJson(),
        "17": the17?.toJson(),
        "18": the18?.toJson(),
        "19": the19?.toJson(),
        "20": the20?.toJson(),
        "21": the21?.toJson(),
        "22": the22?.toJson(),
        "23": the23?.toJson(),
        "24": the24?.toJson(),
        "25": the25?.toJson(),
        "26": the26?.toJson(),
        "27": the27?.toJson(),
        "28": the28?.toJson(),
        "29": the29?.toJson(),
        "30": the30?.toJson(),
        "31": the31?.toJson(),
        "32": the32?.toJson(),
        "33": the33?.toJson(),
        "34": the34?.toJson(),
        "35": the35?.toJson(),
        "36": the36?.toJson(),
        "37": the37?.toJson(),
        "38": the38?.toJson(),
        "39": the39?.toJson(),
        "40": the40?.toJson(),
        "41": the41?.toJson(),
        "42": the42?.toJson(),
        "43": the43?.toJson(),
        "44": the44?.toJson(),
        "45": the45?.toJson(),
        "46": the46?.toJson(),
        "47": the47?.toJson(),
        "48": the48?.toJson(),
        "49": the49?.toJson(),
        "50": the50?.toJson(),
        "51": the51?.toJson(),
        "52": the52?.toJson(),
        "53": the53?.toJson(),
        "54": the54?.toJson(),
        "55": the55?.toJson(),
        "56": the56?.toJson(),
        "57": the57?.toJson(),
        "58": the58?.toJson(),
        "59": the59?.toJson(),
        "60": the60?.toJson(),
        "61": the61?.toJson(),
        "62": the62?.toJson(),
        "63": the63?.toJson(),
        "64": the64?.toJson(),
        "65": the65?.toJson(),
        "66": the66?.toJson(),
        "67": the67?.toJson(),
        "68": the68?.toJson(),
        "69": the69?.toJson(),
        "70": the70?.toJson(),
        "front_en": frontEn?.toJson(),
        "front_fr": frontFr?.toJson(),
        "ingredients_fr": ingredientsFr?.toJson(),
        "nutrition_fr": nutritionFr?.toJson(),
        "packaging_fr": packagingFr?.toJson(),
        "10": the10?.toJson(),
        "ingredients": ingredients?.toJson(),
        "nutrition_en": nutritionEn?.toJson(),
        "front": front?.toJson(),
        "nutrition": nutrition?.toJson(),
        "71": the71?.toJson(),
        "73": the73?.toJson(),
        "74": the74?.toJson(),
        "75": the75?.toJson(),
        "76": the76?.toJson(),
        "77": the77?.toJson(),
        "78": the78?.toJson(),
        "79": the79?.toJson(),
        "80": the80?.toJson(),
        "81": the81?.toJson(),
        "82": the82?.toJson(),
        "83": the83?.toJson(),
        "84": the84?.toJson(),
        "85": the85?.toJson(),
        "86": the86?.toJson(),
        "87": the87?.toJson(),
        "88": the88?.toJson(),
        "89": the89?.toJson(),
        "90": the90?.toJson(),
        "91": the91?.toJson(),
        "92": the92?.toJson(),
        "93": the93?.toJson(),
        "94": the94?.toJson(),
        "95": the95?.toJson(),
        "96": the96?.toJson(),
        "97": the97?.toJson(),
        "98": the98?.toJson(),
        "100": the100?.toJson(),
        "101": the101?.toJson(),
        "102": the102?.toJson(),
        "103": the103?.toJson(),
        "104": the104?.toJson(),
        "front_de": frontDe?.toJson(),
        "front_fi": frontFi?.toJson(),
        "ingredients_de": ingredientsDe?.toJson(),
        "ingredients_fi": ingredientsFi?.toJson(),
        "nutrition_de": nutritionDe?.toJson(),
        "nutrition_fi": nutritionFi?.toJson(),
        "packaging_fi": packagingFi?.toJson(),
        "packaging_en": packagingEn?.toJson(),
        "front_it": frontIt?.toJson(),
        "ingredients_it": ingredientsIt?.toJson(),
        "nutrition_it": nutritionIt?.toJson(),
        "front_cs": frontCs?.toJson(),
        "packaging_it": packagingIt?.toJson(),
        "ingredients_new_lc": ingredientsNewLc?.toJson(),
        "ingredients_en": ingredientsEn?.toJson(),
        "ingredients_bg": ingredientsBg?.toJson(),
        "ingredients_ro": ingredientsRo?.toJson(),
        "nutrition_bg": nutritionBg?.toJson(),
        "72": the72?.toJson(),
        "99": the99?.toJson(),
        "105": the105?.toJson(),
        "106": the106?.toJson(),
        "107": the107?.toJson(),
        "108": the108?.toJson(),
        "109": the109?.toJson(),
        "110": the110?.toJson(),
    };
}

class IngredientsClass {
    String? geometry;
    String? imgid;
    String? normalize;
    String? rev;
    Sizes? sizes;
    String? whiteMagic;
    int? ocr;
    String? orientation;

    IngredientsClass({
        this.geometry,
        this.imgid,
        this.normalize,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.ocr,
        this.orientation,
    });

    factory IngredientsClass.fromJson(Map<String, dynamic> json) => IngredientsClass(
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        ocr: json["ocr"],
        orientation: json["orientation"],
    );

    Map<String, dynamic> toJson() => {
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "ocr": ocr,
        "orientation": orientation,
    };
}

class Sizes {
    The100? the100;
    The100? the400;
    The100? full;
    The100? the200;

    Sizes({
        this.the100,
        this.the400,
        this.full,
        this.the200,
    });

    factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        the100: json["100"] == null ? null : The100.fromJson(json["100"]),
        the400: json["400"] == null ? null : The100.fromJson(json["400"]),
        full: json["full"] == null ? null : The100.fromJson(json["full"]),
        the200: json["200"] == null ? null : The100.fromJson(json["200"]),
    );

    Map<String, dynamic> toJson() => {
        "100": the100?.toJson(),
        "400": the400?.toJson(),
        "full": full?.toJson(),
        "200": the200?.toJson(),
    };
}

class The100 {
    int? h;
    int? w;

    The100({
        this.h,
        this.w,
    });

    factory The100.fromJson(Map<String, dynamic> json) => The100(
        h: json["h"],
        w: json["w"],
    );

    Map<String, dynamic> toJson() => {
        "h": h,
        "w": w,
    };
}

class FrontCs {
    String? angle;
    CoordinatesImageSize? coordinatesImageSize;
    String? geometry;
    String? imgid;
    String? normalize;
    String? rev;
    Sizes? sizes;
    String? whiteMagic;
    String? x1;
    String? x2;
    String? y1;
    String? y2;

    FrontCs({
        this.angle,
        this.coordinatesImageSize,
        this.geometry,
        this.imgid,
        this.normalize,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.x1,
        this.x2,
        this.y1,
        this.y2,
    });

    factory FrontCs.fromJson(Map<String, dynamic> json) => FrontCs(
        angle: json["angle"],
        coordinatesImageSize: coordinatesImageSizeValues.map[json["coordinates_image_size"]]!,
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
    );

    Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSizeValues.reverse[coordinatesImageSize],
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
    };
}

enum CoordinatesImageSize {
    FULL
}

final coordinatesImageSizeValues = EnumValues({
    "full": CoordinatesImageSize.FULL
});

class FrontDe {
    int? angle;
    CoordinatesImageSize? coordinatesImageSize;
    Geometry? geometry;
    String? imgid;
    dynamic normalize;
    String? rev;
    Sizes? sizes;
    dynamic whiteMagic;
    String? x1;
    String? x2;
    String? y1;
    String? y2;
    int? ocr;
    String? orientation;

    FrontDe({
        this.angle,
        this.coordinatesImageSize,
        this.geometry,
        this.imgid,
        this.normalize,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.x1,
        this.x2,
        this.y1,
        this.y2,
        this.ocr,
        this.orientation,
    });

    factory FrontDe.fromJson(Map<String, dynamic> json) => FrontDe(
        angle: json["angle"],
        coordinatesImageSize: coordinatesImageSizeValues.map[json["coordinates_image_size"]]!,
        geometry: geometryValues.map[json["geometry"]]!,
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
        ocr: json["ocr"],
        orientation: json["orientation"],
    );

    Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSizeValues.reverse[coordinatesImageSize],
        "geometry": geometryValues.reverse[geometry],
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
        "ocr": ocr,
        "orientation": orientation,
    };
}

enum Geometry {
    THE_0_X0_00,
    THE_0_X0_11
}

final geometryValues = EnumValues({
    "0x0-0-0": Geometry.THE_0_X0_00,
    "0x0--1--1": Geometry.THE_0_X0_11
});

class FrontEn {
    dynamic angle;
    String? coordinatesImageSize;
    String? geometry;
    String? imgid;
    String? normalize;
    String? rev;
    Sizes? sizes;
    String? whiteMagic;
    String? x1;
    String? x2;
    String? y1;
    String? y2;
    int? ocr;
    String? orientation;

    FrontEn({
        this.angle,
        this.coordinatesImageSize,
        this.geometry,
        this.imgid,
        this.normalize,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.x1,
        this.x2,
        this.y1,
        this.y2,
        this.ocr,
        this.orientation,
    });

    factory FrontEn.fromJson(Map<String, dynamic> json) => FrontEn(
        angle: json["angle"],
        coordinatesImageSize: json["coordinates_image_size"],
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
        ocr: json["ocr"],
        orientation: json["orientation"],
    );

    Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSize,
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
        "ocr": ocr,
        "orientation": orientation,
    };
}

class IngredientsNewLc {
    int? angle;
    String? geometry;
    String? imgid;
    dynamic normalize;
    int? ocr;
    dynamic orientation;
    String? rev;
    Sizes? sizes;
    dynamic whiteMagic;
    int? x1;
    int? x2;
    int? y1;
    int? y2;

    IngredientsNewLc({
        this.angle,
        this.geometry,
        this.imgid,
        this.normalize,
        this.ocr,
        this.orientation,
        this.rev,
        this.sizes,
        this.whiteMagic,
        this.x1,
        this.x2,
        this.y1,
        this.y2,
    });

    factory IngredientsNewLc.fromJson(Map<String, dynamic> json) => IngredientsNewLc(
        angle: json["angle"],
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        ocr: json["ocr"],
        orientation: json["orientation"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
    );

    Map<String, dynamic> toJson() => {
        "angle": angle,
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "ocr": ocr,
        "orientation": orientation,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
    };
}

class The1 {
    Sizes? sizes;
    dynamic uploadedT;
    String? uploader;

    The1({
        this.sizes,
        this.uploadedT,
        this.uploader,
    });

    factory The1.fromJson(Map<String, dynamic> json) => The1(
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        uploadedT: json["uploaded_t"],
        uploader: json["uploader"],
    );

    Map<String, dynamic> toJson() => {
        "sizes": sizes?.toJson(),
        "uploaded_t": uploadedT,
        "uploader": uploader,
    };
}

class The102 {
    Sizes? sizes;
    int? uploadedT;
    String? uploader;

    The102({
        this.sizes,
        this.uploadedT,
        this.uploader,
    });

    factory The102.fromJson(Map<String, dynamic> json) => The102(
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        uploadedT: json["uploaded_t"],
        uploader: json["uploader"],
    );

    Map<String, dynamic> toJson() => {
        "sizes": sizes?.toJson(),
        "uploaded_t": uploadedT,
        "uploader": uploader,
    };
}

class ProductIngredient {
    String? ciqualProxyFoodCode;
    String? id;
    double? percent;
    double? percentEstimate;
    double? percentMax;
    double? percentMin;
    int? rank;
    String? text;
    FromPalmOil? vegan;
    FromPalmOil? vegetarian;
    String? ciqualFoodCode;
    FromPalmOil? fromPalmOil;
    FromPalmOil? hasSubIngredients;
    int? isInTaxonomy;
    String? origins;
    String? processing;

    ProductIngredient({
        this.ciqualProxyFoodCode,
        this.id,
        this.percent,
        this.percentEstimate,
        this.percentMax,
        this.percentMin,
        this.rank,
        this.text,
        this.vegan,
        this.vegetarian,
        this.ciqualFoodCode,
        this.fromPalmOil,
        this.hasSubIngredients,
        this.isInTaxonomy,
        this.origins,
        this.processing,
    });

    factory ProductIngredient.fromJson(Map<String, dynamic> json) => ProductIngredient(
        ciqualProxyFoodCode: json["ciqual_proxy_food_code"],
        id: json["id"],
        percent: json["percent"]?.toDouble(),
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"]?.toDouble(),
        rank: json["rank"],
        text: json["text"],
        vegan: fromPalmOilValues.map[json["vegan"]]!,
        vegetarian: fromPalmOilValues.map[json["vegetarian"]]!,
        ciqualFoodCode: json["ciqual_food_code"],
        fromPalmOil: fromPalmOilValues.map[json["from_palm_oil"]]!,
        hasSubIngredients: fromPalmOilValues.map[json["has_sub_ingredients"]]!,
        isInTaxonomy: json["is_in_taxonomy"],
        origins: json["origins"],
        processing: json["processing"],
    );

    Map<String, dynamic> toJson() => {
        "ciqual_proxy_food_code": ciqualProxyFoodCode,
        "id": id,
        "percent": percent,
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "rank": rank,
        "text": text,
        "vegan": fromPalmOilValues.reverse[vegan],
        "vegetarian": fromPalmOilValues.reverse[vegetarian],
        "ciqual_food_code": ciqualFoodCode,
        "from_palm_oil": fromPalmOilValues.reverse[fromPalmOil],
        "has_sub_ingredients": fromPalmOilValues.reverse[hasSubIngredients],
        "is_in_taxonomy": isInTaxonomy,
        "origins": origins,
        "processing": processing,
    };
}

class IngredientsAnalysis {
    List<String>? enNonVegan;
    List<String>? enNonVegetarian;
    List<String>? enPalmOilContentUnknown;
    List<String>? enVeganStatusUnknown;
    List<String>? enVegetarianStatusUnknown;

    IngredientsAnalysis({
        this.enNonVegan,
        this.enNonVegetarian,
        this.enPalmOilContentUnknown,
        this.enVeganStatusUnknown,
        this.enVegetarianStatusUnknown,
    });

    factory IngredientsAnalysis.fromJson(Map<String, dynamic> json) => IngredientsAnalysis(
        enNonVegan: json["en:non-vegan"] == null ? [] : List<String>.from(json["en:non-vegan"]!.map((x) => x)),
        enNonVegetarian: json["en:non-vegetarian"] == null ? [] : List<String>.from(json["en:non-vegetarian"]!.map((x) => x)),
        enPalmOilContentUnknown: json["en:palm-oil-content-unknown"] == null ? [] : List<String>.from(json["en:palm-oil-content-unknown"]!.map((x) => x)),
        enVeganStatusUnknown: json["en:vegan-status-unknown"] == null ? [] : List<String>.from(json["en:vegan-status-unknown"]!.map((x) => x)),
        enVegetarianStatusUnknown: json["en:vegetarian-status-unknown"] == null ? [] : List<String>.from(json["en:vegetarian-status-unknown"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "en:non-vegan": enNonVegan == null ? [] : List<dynamic>.from(enNonVegan!.map((x) => x)),
        "en:non-vegetarian": enNonVegetarian == null ? [] : List<dynamic>.from(enNonVegetarian!.map((x) => x)),
        "en:palm-oil-content-unknown": enPalmOilContentUnknown == null ? [] : List<dynamic>.from(enPalmOilContentUnknown!.map((x) => x)),
        "en:vegan-status-unknown": enVeganStatusUnknown == null ? [] : List<dynamic>.from(enVeganStatusUnknown!.map((x) => x)),
        "en:vegetarian-status-unknown": enVegetarianStatusUnknown == null ? [] : List<dynamic>.from(enVegetarianStatusUnknown!.map((x) => x)),
    };
}

enum IngredientsAnalysisTag {
    EN_NON_VEGAN,
    EN_NON_VEGETARIAN,
    EN_PALM_OIL_CONTENT_UNKNOWN,
    EN_PALM_OIL_FREE,
    EN_VEGAN_STATUS_UNKNOWN,
    EN_VEGETARIAN_STATUS_UNKNOWN
}

final ingredientsAnalysisTagValues = EnumValues({
    "en:non-vegan": IngredientsAnalysisTag.EN_NON_VEGAN,
    "en:non-vegetarian": IngredientsAnalysisTag.EN_NON_VEGETARIAN,
    "en:palm-oil-content-unknown": IngredientsAnalysisTag.EN_PALM_OIL_CONTENT_UNKNOWN,
    "en:palm-oil-free": IngredientsAnalysisTag.EN_PALM_OIL_FREE,
    "en:vegan-status-unknown": IngredientsAnalysisTag.EN_VEGAN_STATUS_UNKNOWN,
    "en:vegetarian-status-unknown": IngredientsAnalysisTag.EN_VEGETARIAN_STATUS_UNKNOWN
});

class LanguagesCodes {
    int? en;
    int? fr;
    int? de;
    int? fi;
    int? es;
    int? it;
    int? cs;
    int? nl;
    int? bg;
    int? ro;

    LanguagesCodes({
        this.en,
        this.fr,
        this.de,
        this.fi,
        this.es,
        this.it,
        this.cs,
        this.nl,
        this.bg,
        this.ro,
    });

    factory LanguagesCodes.fromJson(Map<String, dynamic> json) => LanguagesCodes(
        en: json["en"],
        fr: json["fr"],
        de: json["de"],
        fi: json["fi"],
        es: json["es"],
        it: json["it"],
        cs: json["cs"],
        nl: json["nl"],
        bg: json["bg"],
        ro: json["ro"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "fr": fr,
        "de": de,
        "fi": fi,
        "es": es,
        "it": it,
        "cs": cs,
        "nl": nl,
        "bg": bg,
        "ro": ro,
    };
}

enum NovaGroupDebug {
    EMPTY,
    NO_NOVA_GROUP_IF_TOO_MANY_INGREDIENTS_ARE_UNKNOWN_8_OUT_OF_11,
    NO_NOVA_GROUP_WHEN_THE_PRODUCT_DOES_NOT_HAVE_INGREDIENTS
}

final novaGroupDebugValues = EnumValues({
    "": NovaGroupDebug.EMPTY,
    "no nova group if too many ingredients are unknown: 8 out of 11": NovaGroupDebug.NO_NOVA_GROUP_IF_TOO_MANY_INGREDIENTS_ARE_UNKNOWN_8_OUT_OF_11,
    "no nova group when the product does not have ingredients": NovaGroupDebug.NO_NOVA_GROUP_WHEN_THE_PRODUCT_DOES_NOT_HAVE_INGREDIENTS
});

enum NovaGroupsTag {
    EN_3_PROCESSED_FOODS,
    EN_4_ULTRA_PROCESSED_FOOD_AND_DRINK_PRODUCTS,
    UNKNOWN
}

final novaGroupsTagValues = EnumValues({
    "en:3-processed-foods": NovaGroupsTag.EN_3_PROCESSED_FOODS,
    "en:4-ultra-processed-food-and-drink-products": NovaGroupsTag.EN_4_ULTRA_PROCESSED_FOOD_AND_DRINK_PRODUCTS,
    "unknown": NovaGroupsTag.UNKNOWN
});

class NutrientLevels {
    Fat? fat;
    Fat? salt;
    Fat? saturatedFat;
    Fat? sugars;

    NutrientLevels({
        this.fat,
        this.salt,
        this.saturatedFat,
        this.sugars,
    });

    factory NutrientLevels.fromJson(Map<String, dynamic> json) => NutrientLevels(
        fat: fatValues.map[json["fat"]]!,
        salt: fatValues.map[json["salt"]]!,
        saturatedFat: fatValues.map[json["saturated-fat"]]!,
        sugars: fatValues.map[json["sugars"]]!,
    );

    Map<String, dynamic> toJson() => {
        "fat": fatValues.reverse[fat],
        "salt": fatValues.reverse[salt],
        "saturated-fat": fatValues.reverse[saturatedFat],
        "sugars": fatValues.reverse[sugars],
    };
}

enum Fat {
    HIGH,
    LOW,
    MODERATE
}

final fatValues = EnumValues({
    "high": Fat.HIGH,
    "low": Fat.LOW,
    "moderate": Fat.MODERATE
});

enum NutrientLevelsTag {
    EN_FAT_IN_HIGH_QUANTITY,
    EN_FAT_IN_LOW_QUANTITY,
    EN_FAT_IN_MODERATE_QUANTITY,
    EN_SALT_IN_HIGH_QUANTITY,
    EN_SALT_IN_LOW_QUANTITY,
    EN_SALT_IN_MODERATE_QUANTITY,
    EN_SATURATED_FAT_IN_HIGH_QUANTITY,
    EN_SATURATED_FAT_IN_LOW_QUANTITY,
    EN_SATURATED_FAT_IN_MODERATE_QUANTITY,
    EN_SUGARS_IN_LOW_QUANTITY
}

final nutrientLevelsTagValues = EnumValues({
    "en:fat-in-high-quantity": NutrientLevelsTag.EN_FAT_IN_HIGH_QUANTITY,
    "en:fat-in-low-quantity": NutrientLevelsTag.EN_FAT_IN_LOW_QUANTITY,
    "en:fat-in-moderate-quantity": NutrientLevelsTag.EN_FAT_IN_MODERATE_QUANTITY,
    "en:salt-in-high-quantity": NutrientLevelsTag.EN_SALT_IN_HIGH_QUANTITY,
    "en:salt-in-low-quantity": NutrientLevelsTag.EN_SALT_IN_LOW_QUANTITY,
    "en:salt-in-moderate-quantity": NutrientLevelsTag.EN_SALT_IN_MODERATE_QUANTITY,
    "en:saturated-fat-in-high-quantity": NutrientLevelsTag.EN_SATURATED_FAT_IN_HIGH_QUANTITY,
    "en:saturated-fat-in-low-quantity": NutrientLevelsTag.EN_SATURATED_FAT_IN_LOW_QUANTITY,
    "en:saturated-fat-in-moderate-quantity": NutrientLevelsTag.EN_SATURATED_FAT_IN_MODERATE_QUANTITY,
    "en:sugars-in-low-quantity": NutrientLevelsTag.EN_SUGARS_IN_LOW_QUANTITY
});

class Nutriments {
    double? carbohydrates;
    double? carbohydrates100G;
    Unit? carbohydratesUnit;
    double? carbohydratesValue;
    double? carbonFootprintFromKnownIngredients100G;
    double? carbonFootprintFromKnownIngredientsProduct;
    int? energy;
    int? energyKcal;
    int? energyKcal100G;
    EnergyUnit? energyKcalUnit;
    int? energyKcalValue;
    double? energyKcalValueComputed;
    int? energyKj;
    int? energyKj100G;
    EnergyUnit? energyKjUnit;
    int? energyKjValue;
    double? energyKjValueComputed;
    int? energy100G;
    EnergyUnit? energyUnit;
    int? energyValue;
    double? fat;
    double? fat100G;
    Unit? fatUnit;
    double? fatValue;
    double? fiber;
    double? fiber100G;
    Unit? fiberUnit;
    double? fiberValue;
    double? fruitsVegetablesLegumesEstimateFromIngredients100G;
    double? fruitsVegetablesLegumesEstimateFromIngredientsServing;
    double? fruitsVegetablesNutsEstimateFromIngredients100G;
    double? fruitsVegetablesNutsEstimateFromIngredientsServing;
    int? novaGroup;
    int? novaGroup100G;
    int? novaGroupServing;
    int? nutritionScoreFr;
    int? nutritionScoreFr100G;
    double? proteins;
    double? proteins100G;
    Unit? proteinsUnit;
    double? proteinsValue;
    double? salt;
    double? salt100G;
    Unit? saltUnit;
    double? saltValue;
    double? saturatedFat;
    double? saturatedFat100G;
    Unit? saturatedFatUnit;
    double? saturatedFatValue;
    double? sodium;
    double? sodium100G;
    Unit? sodiumUnit;
    double? sodiumValue;
    double? sugars;
    double? sugars100G;
    Unit? sugarsUnit;
    double? sugarsValue;
    double? carbohydratesServing;
    int? carbonFootprintFromKnownIngredientsServing;
    double? energyKcalServing;
    int? energyKjServing;
    int? energyServing;
    double? fatServing;
    double? fiberServing;
    double? proteinsServing;
    double? saltServing;
    double? saturatedFatServing;
    double? sodiumServing;
    double? sugarsServing;
    double? omega3Fat;
    double? omega3Fat100G;
    String? omega3FatUnit;
    double? omega3FatValue;
    Unit? nutritionScoreFrUnit;
    int? nutritionScoreFrValue;
    int? monounsaturatedFat;
    int? monounsaturatedFat100G;
    String? monounsaturatedFatLabel;
    Unit? monounsaturatedFatUnit;
    int? monounsaturatedFatValue;
    String? omega3FatLabel;
    int? polyunsaturatedFat;
    int? polyunsaturatedFat100G;
    String? polyunsaturatedFatLabel;
    Unit? polyunsaturatedFatUnit;
    int? polyunsaturatedFatValue;
    double? vitaminA;
    double? vitaminA100G;
    String? vitaminAUnit;
    int? vitaminAValue;
    double? vitaminD;
    double? vitaminD100G;
    String? vitaminDUnit;
    int? vitaminDValue;
    double? carbonFootprintFromMeatOrFish100G;
    int? carbonFootprintFromMeatOrFishProduct;
    double? carbonFootprintFromMeatOrFishServing;
    double? fruitsVegetablesNutsEstimate;
    double? fruitsVegetablesNutsEstimate100G;
    String? fruitsVegetablesNutsEstimateLabel;
    double? fruitsVegetablesNutsEstimateServing;
    Unit? fruitsVegetablesNutsEstimateUnit;
    double? fruitsVegetablesNutsEstimateValue;
    int? glucidesAssimilables;
    int? glucidesAssimilables100G;
    int? glucidesAssimilablesServing;
    Unit? glucidesAssimilablesUnit;
    int? glucidesAssimilablesValue;
    double? omega3FatServing;
    int? poisson;
    int? poisson100G;
    String? poissonLabel;
    int? poissonServing;
    Unit? poissonUnit;
    int? poissonValue;
    String? fiberModifier;
    int? fruitsVegetablesNuts;
    int? fruitsVegetablesNutsDried;
    int? fruitsVegetablesNutsDried100G;
    int? fruitsVegetablesNutsDriedServing;
    Unit? fruitsVegetablesNutsDriedUnit;
    int? fruitsVegetablesNutsDriedValue;
    int? fruitsVegetablesNuts100G;
    int? fruitsVegetablesNutsServing;
    String? fruitsVegetablesNutsUnit;
    int? fruitsVegetablesNutsValue;
    int? alcohol;
    int? alcohol100G;
    int? alcoholServing;
    String? alcoholUnit;
    int? alcoholValue;
    String? fruitsVegetablesNutsLabel;

    Nutriments({
        this.carbohydrates,
        this.carbohydrates100G,
        this.carbohydratesUnit,
        this.carbohydratesValue,
        this.carbonFootprintFromKnownIngredients100G,
        this.carbonFootprintFromKnownIngredientsProduct,
        this.energy,
        this.energyKcal,
        this.energyKcal100G,
        this.energyKcalUnit,
        this.energyKcalValue,
        this.energyKcalValueComputed,
        this.energyKj,
        this.energyKj100G,
        this.energyKjUnit,
        this.energyKjValue,
        this.energyKjValueComputed,
        this.energy100G,
        this.energyUnit,
        this.energyValue,
        this.fat,
        this.fat100G,
        this.fatUnit,
        this.fatValue,
        this.fiber,
        this.fiber100G,
        this.fiberUnit,
        this.fiberValue,
        this.fruitsVegetablesLegumesEstimateFromIngredients100G,
        this.fruitsVegetablesLegumesEstimateFromIngredientsServing,
        this.fruitsVegetablesNutsEstimateFromIngredients100G,
        this.fruitsVegetablesNutsEstimateFromIngredientsServing,
        this.novaGroup,
        this.novaGroup100G,
        this.novaGroupServing,
        this.nutritionScoreFr,
        this.nutritionScoreFr100G,
        this.proteins,
        this.proteins100G,
        this.proteinsUnit,
        this.proteinsValue,
        this.salt,
        this.salt100G,
        this.saltUnit,
        this.saltValue,
        this.saturatedFat,
        this.saturatedFat100G,
        this.saturatedFatUnit,
        this.saturatedFatValue,
        this.sodium,
        this.sodium100G,
        this.sodiumUnit,
        this.sodiumValue,
        this.sugars,
        this.sugars100G,
        this.sugarsUnit,
        this.sugarsValue,
        this.carbohydratesServing,
        this.carbonFootprintFromKnownIngredientsServing,
        this.energyKcalServing,
        this.energyKjServing,
        this.energyServing,
        this.fatServing,
        this.fiberServing,
        this.proteinsServing,
        this.saltServing,
        this.saturatedFatServing,
        this.sodiumServing,
        this.sugarsServing,
        this.omega3Fat,
        this.omega3Fat100G,
        this.omega3FatUnit,
        this.omega3FatValue,
        this.nutritionScoreFrUnit,
        this.nutritionScoreFrValue,
        this.monounsaturatedFat,
        this.monounsaturatedFat100G,
        this.monounsaturatedFatLabel,
        this.monounsaturatedFatUnit,
        this.monounsaturatedFatValue,
        this.omega3FatLabel,
        this.polyunsaturatedFat,
        this.polyunsaturatedFat100G,
        this.polyunsaturatedFatLabel,
        this.polyunsaturatedFatUnit,
        this.polyunsaturatedFatValue,
        this.vitaminA,
        this.vitaminA100G,
        this.vitaminAUnit,
        this.vitaminAValue,
        this.vitaminD,
        this.vitaminD100G,
        this.vitaminDUnit,
        this.vitaminDValue,
        this.carbonFootprintFromMeatOrFish100G,
        this.carbonFootprintFromMeatOrFishProduct,
        this.carbonFootprintFromMeatOrFishServing,
        this.fruitsVegetablesNutsEstimate,
        this.fruitsVegetablesNutsEstimate100G,
        this.fruitsVegetablesNutsEstimateLabel,
        this.fruitsVegetablesNutsEstimateServing,
        this.fruitsVegetablesNutsEstimateUnit,
        this.fruitsVegetablesNutsEstimateValue,
        this.glucidesAssimilables,
        this.glucidesAssimilables100G,
        this.glucidesAssimilablesServing,
        this.glucidesAssimilablesUnit,
        this.glucidesAssimilablesValue,
        this.omega3FatServing,
        this.poisson,
        this.poisson100G,
        this.poissonLabel,
        this.poissonServing,
        this.poissonUnit,
        this.poissonValue,
        this.fiberModifier,
        this.fruitsVegetablesNuts,
        this.fruitsVegetablesNutsDried,
        this.fruitsVegetablesNutsDried100G,
        this.fruitsVegetablesNutsDriedServing,
        this.fruitsVegetablesNutsDriedUnit,
        this.fruitsVegetablesNutsDriedValue,
        this.fruitsVegetablesNuts100G,
        this.fruitsVegetablesNutsServing,
        this.fruitsVegetablesNutsUnit,
        this.fruitsVegetablesNutsValue,
        this.alcohol,
        this.alcohol100G,
        this.alcoholServing,
        this.alcoholUnit,
        this.alcoholValue,
        this.fruitsVegetablesNutsLabel,
    });

    factory Nutriments.fromJson(Map<String, dynamic> json) => Nutriments(
        carbohydrates: json["carbohydrates"]?.toDouble(),
        carbohydrates100G: json["carbohydrates_100g"]?.toDouble(),
        carbohydratesUnit: unitValues.map[json["carbohydrates_unit"]]!,
        carbohydratesValue: json["carbohydrates_value"]?.toDouble(),
        carbonFootprintFromKnownIngredients100G: json["carbon-footprint-from-known-ingredients_100g"]?.toDouble(),
        carbonFootprintFromKnownIngredientsProduct: json["carbon-footprint-from-known-ingredients_product"]?.toDouble(),
        energy: json["energy"],
        energyKcal: json["energy-kcal"],
        energyKcal100G: json["energy-kcal_100g"],
        energyKcalUnit: energyUnitValues.map[json["energy-kcal_unit"]]!,
        energyKcalValue: json["energy-kcal_value"],
        energyKcalValueComputed: json["energy-kcal_value_computed"]?.toDouble(),
        energyKj: json["energy-kj"],
        energyKj100G: json["energy-kj_100g"],
        energyKjUnit: energyUnitValues.map[json["energy-kj_unit"]]!,
        energyKjValue: json["energy-kj_value"],
        energyKjValueComputed: json["energy-kj_value_computed"]?.toDouble(),
        energy100G: json["energy_100g"],
        energyUnit: energyUnitValues.map[json["energy_unit"]]!,
        energyValue: json["energy_value"],
        fat: json["fat"]?.toDouble(),
        fat100G: json["fat_100g"]?.toDouble(),
        fatUnit: unitValues.map[json["fat_unit"]]!,
        fatValue: json["fat_value"]?.toDouble(),
        fiber: json["fiber"]?.toDouble(),
        fiber100G: json["fiber_100g"]?.toDouble(),
        fiberUnit: unitValues.map[json["fiber_unit"]]!,
        fiberValue: json["fiber_value"]?.toDouble(),
        fruitsVegetablesLegumesEstimateFromIngredients100G: json["fruits-vegetables-legumes-estimate-from-ingredients_100g"]?.toDouble(),
        fruitsVegetablesLegumesEstimateFromIngredientsServing: json["fruits-vegetables-legumes-estimate-from-ingredients_serving"]?.toDouble(),
        fruitsVegetablesNutsEstimateFromIngredients100G: json["fruits-vegetables-nuts-estimate-from-ingredients_100g"]?.toDouble(),
        fruitsVegetablesNutsEstimateFromIngredientsServing: json["fruits-vegetables-nuts-estimate-from-ingredients_serving"]?.toDouble(),
        novaGroup: json["nova-group"],
        novaGroup100G: json["nova-group_100g"],
        novaGroupServing: json["nova-group_serving"],
        nutritionScoreFr: json["nutrition-score-fr"],
        nutritionScoreFr100G: json["nutrition-score-fr_100g"],
        proteins: json["proteins"]?.toDouble(),
        proteins100G: json["proteins_100g"]?.toDouble(),
        proteinsUnit: unitValues.map[json["proteins_unit"]]!,
        proteinsValue: json["proteins_value"]?.toDouble(),
        salt: json["salt"]?.toDouble(),
        salt100G: json["salt_100g"]?.toDouble(),
        saltUnit: unitValues.map[json["salt_unit"]]!,
        saltValue: json["salt_value"]?.toDouble(),
        saturatedFat: json["saturated-fat"]?.toDouble(),
        saturatedFat100G: json["saturated-fat_100g"]?.toDouble(),
        saturatedFatUnit: unitValues.map[json["saturated-fat_unit"]]!,
        saturatedFatValue: json["saturated-fat_value"]?.toDouble(),
        sodium: json["sodium"]?.toDouble(),
        sodium100G: json["sodium_100g"]?.toDouble(),
        sodiumUnit: unitValues.map[json["sodium_unit"]]!,
        sodiumValue: json["sodium_value"]?.toDouble(),
        sugars: json["sugars"]?.toDouble(),
        sugars100G: json["sugars_100g"]?.toDouble(),
        sugarsUnit: unitValues.map[json["sugars_unit"]]!,
        sugarsValue: json["sugars_value"]?.toDouble(),
        carbohydratesServing: json["carbohydrates_serving"]?.toDouble(),
        carbonFootprintFromKnownIngredientsServing: json["carbon-footprint-from-known-ingredients_serving"],
        energyKcalServing: json["energy-kcal_serving"]?.toDouble(),
        energyKjServing: json["energy-kj_serving"],
        energyServing: json["energy_serving"],
        fatServing: json["fat_serving"]?.toDouble(),
        fiberServing: json["fiber_serving"]?.toDouble(),
        proteinsServing: json["proteins_serving"]?.toDouble(),
        saltServing: json["salt_serving"]?.toDouble(),
        saturatedFatServing: json["saturated-fat_serving"]?.toDouble(),
        sodiumServing: json["sodium_serving"]?.toDouble(),
        sugarsServing: json["sugars_serving"]?.toDouble(),
        omega3Fat: json["omega-3-fat"]?.toDouble(),
        omega3Fat100G: json["omega-3-fat_100g"]?.toDouble(),
        omega3FatUnit: json["omega-3-fat_unit"],
        omega3FatValue: json["omega-3-fat_value"]?.toDouble(),
        nutritionScoreFrUnit: unitValues.map[json["nutrition-score-fr_unit"]]!,
        nutritionScoreFrValue: json["nutrition-score-fr_value"],
        monounsaturatedFat: json["monounsaturated-fat"],
        monounsaturatedFat100G: json["monounsaturated-fat_100g"],
        monounsaturatedFatLabel: json["monounsaturated-fat_label"],
        monounsaturatedFatUnit: unitValues.map[json["monounsaturated-fat_unit"]]!,
        monounsaturatedFatValue: json["monounsaturated-fat_value"],
        omega3FatLabel: json["omega-3-fat_label"],
        polyunsaturatedFat: json["polyunsaturated-fat"],
        polyunsaturatedFat100G: json["polyunsaturated-fat_100g"],
        polyunsaturatedFatLabel: json["polyunsaturated-fat_label"],
        polyunsaturatedFatUnit: unitValues.map[json["polyunsaturated-fat_unit"]]!,
        polyunsaturatedFatValue: json["polyunsaturated-fat_value"],
        vitaminA: json["vitamin-a"]?.toDouble(),
        vitaminA100G: json["vitamin-a_100g"]?.toDouble(),
        vitaminAUnit: json["vitamin-a_unit"],
        vitaminAValue: json["vitamin-a_value"],
        vitaminD: json["vitamin-d"]?.toDouble(),
        vitaminD100G: json["vitamin-d_100g"]?.toDouble(),
        vitaminDUnit: json["vitamin-d_unit"],
        vitaminDValue: json["vitamin-d_value"],
        carbonFootprintFromMeatOrFish100G: json["carbon-footprint-from-meat-or-fish_100g"]?.toDouble(),
        carbonFootprintFromMeatOrFishProduct: json["carbon-footprint-from-meat-or-fish_product"],
        carbonFootprintFromMeatOrFishServing: json["carbon-footprint-from-meat-or-fish_serving"]?.toDouble(),
        fruitsVegetablesNutsEstimate: json["fruits-vegetables-nuts-estimate"]?.toDouble(),
        fruitsVegetablesNutsEstimate100G: json["fruits-vegetables-nuts-estimate_100g"]?.toDouble(),
        fruitsVegetablesNutsEstimateLabel: json["fruits-vegetables-nuts-estimate_label"],
        fruitsVegetablesNutsEstimateServing: json["fruits-vegetables-nuts-estimate_serving"]?.toDouble(),
        fruitsVegetablesNutsEstimateUnit: unitValues.map[json["fruits-vegetables-nuts-estimate_unit"]]!,
        fruitsVegetablesNutsEstimateValue: json["fruits-vegetables-nuts-estimate_value"]?.toDouble(),
        glucidesAssimilables: json["glucides assimilables"],
        glucidesAssimilables100G: json["glucides assimilables_100g"],
        glucidesAssimilablesServing: json["glucides assimilables_serving"],
        glucidesAssimilablesUnit: unitValues.map[json["glucides assimilables_unit"]]!,
        glucidesAssimilablesValue: json["glucides assimilables_value"],
        omega3FatServing: json["omega-3-fat_serving"]?.toDouble(),
        poisson: json["poisson"],
        poisson100G: json["poisson_100g"],
        poissonLabel: json["poisson_label"],
        poissonServing: json["poisson_serving"],
        poissonUnit: unitValues.map[json["poisson_unit"]]!,
        poissonValue: json["poisson_value"],
        fiberModifier: json["fiber_modifier"],
        fruitsVegetablesNuts: json["fruits-vegetables-nuts"],
        fruitsVegetablesNutsDried: json["fruits-vegetables-nuts-dried"],
        fruitsVegetablesNutsDried100G: json["fruits-vegetables-nuts-dried_100g"],
        fruitsVegetablesNutsDriedServing: json["fruits-vegetables-nuts-dried_serving"],
        fruitsVegetablesNutsDriedUnit: unitValues.map[json["fruits-vegetables-nuts-dried_unit"]]!,
        fruitsVegetablesNutsDriedValue: json["fruits-vegetables-nuts-dried_value"],
        fruitsVegetablesNuts100G: json["fruits-vegetables-nuts_100g"],
        fruitsVegetablesNutsServing: json["fruits-vegetables-nuts_serving"],
        fruitsVegetablesNutsUnit: json["fruits-vegetables-nuts_unit"],
        fruitsVegetablesNutsValue: json["fruits-vegetables-nuts_value"],
        alcohol: json["alcohol"],
        alcohol100G: json["alcohol_100g"],
        alcoholServing: json["alcohol_serving"],
        alcoholUnit: json["alcohol_unit"],
        alcoholValue: json["alcohol_value"],
        fruitsVegetablesNutsLabel: json["fruits-vegetables-nuts_label"],
    );

    Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates,
        "carbohydrates_100g": carbohydrates100G,
        "carbohydrates_unit": unitValues.reverse[carbohydratesUnit],
        "carbohydrates_value": carbohydratesValue,
        "carbon-footprint-from-known-ingredients_100g": carbonFootprintFromKnownIngredients100G,
        "carbon-footprint-from-known-ingredients_product": carbonFootprintFromKnownIngredientsProduct,
        "energy": energy,
        "energy-kcal": energyKcal,
        "energy-kcal_100g": energyKcal100G,
        "energy-kcal_unit": energyUnitValues.reverse[energyKcalUnit],
        "energy-kcal_value": energyKcalValue,
        "energy-kcal_value_computed": energyKcalValueComputed,
        "energy-kj": energyKj,
        "energy-kj_100g": energyKj100G,
        "energy-kj_unit": energyUnitValues.reverse[energyKjUnit],
        "energy-kj_value": energyKjValue,
        "energy-kj_value_computed": energyKjValueComputed,
        "energy_100g": energy100G,
        "energy_unit": energyUnitValues.reverse[energyUnit],
        "energy_value": energyValue,
        "fat": fat,
        "fat_100g": fat100G,
        "fat_unit": unitValues.reverse[fatUnit],
        "fat_value": fatValue,
        "fiber": fiber,
        "fiber_100g": fiber100G,
        "fiber_unit": unitValues.reverse[fiberUnit],
        "fiber_value": fiberValue,
        "fruits-vegetables-legumes-estimate-from-ingredients_100g": fruitsVegetablesLegumesEstimateFromIngredients100G,
        "fruits-vegetables-legumes-estimate-from-ingredients_serving": fruitsVegetablesLegumesEstimateFromIngredientsServing,
        "fruits-vegetables-nuts-estimate-from-ingredients_100g": fruitsVegetablesNutsEstimateFromIngredients100G,
        "fruits-vegetables-nuts-estimate-from-ingredients_serving": fruitsVegetablesNutsEstimateFromIngredientsServing,
        "nova-group": novaGroup,
        "nova-group_100g": novaGroup100G,
        "nova-group_serving": novaGroupServing,
        "nutrition-score-fr": nutritionScoreFr,
        "nutrition-score-fr_100g": nutritionScoreFr100G,
        "proteins": proteins,
        "proteins_100g": proteins100G,
        "proteins_unit": unitValues.reverse[proteinsUnit],
        "proteins_value": proteinsValue,
        "salt": salt,
        "salt_100g": salt100G,
        "salt_unit": unitValues.reverse[saltUnit],
        "salt_value": saltValue,
        "saturated-fat": saturatedFat,
        "saturated-fat_100g": saturatedFat100G,
        "saturated-fat_unit": unitValues.reverse[saturatedFatUnit],
        "saturated-fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_100g": sodium100G,
        "sodium_unit": unitValues.reverse[sodiumUnit],
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_100g": sugars100G,
        "sugars_unit": unitValues.reverse[sugarsUnit],
        "sugars_value": sugarsValue,
        "carbohydrates_serving": carbohydratesServing,
        "carbon-footprint-from-known-ingredients_serving": carbonFootprintFromKnownIngredientsServing,
        "energy-kcal_serving": energyKcalServing,
        "energy-kj_serving": energyKjServing,
        "energy_serving": energyServing,
        "fat_serving": fatServing,
        "fiber_serving": fiberServing,
        "proteins_serving": proteinsServing,
        "salt_serving": saltServing,
        "saturated-fat_serving": saturatedFatServing,
        "sodium_serving": sodiumServing,
        "sugars_serving": sugarsServing,
        "omega-3-fat": omega3Fat,
        "omega-3-fat_100g": omega3Fat100G,
        "omega-3-fat_unit": omega3FatUnit,
        "omega-3-fat_value": omega3FatValue,
        "nutrition-score-fr_unit": unitValues.reverse[nutritionScoreFrUnit],
        "nutrition-score-fr_value": nutritionScoreFrValue,
        "monounsaturated-fat": monounsaturatedFat,
        "monounsaturated-fat_100g": monounsaturatedFat100G,
        "monounsaturated-fat_label": monounsaturatedFatLabel,
        "monounsaturated-fat_unit": unitValues.reverse[monounsaturatedFatUnit],
        "monounsaturated-fat_value": monounsaturatedFatValue,
        "omega-3-fat_label": omega3FatLabel,
        "polyunsaturated-fat": polyunsaturatedFat,
        "polyunsaturated-fat_100g": polyunsaturatedFat100G,
        "polyunsaturated-fat_label": polyunsaturatedFatLabel,
        "polyunsaturated-fat_unit": unitValues.reverse[polyunsaturatedFatUnit],
        "polyunsaturated-fat_value": polyunsaturatedFatValue,
        "vitamin-a": vitaminA,
        "vitamin-a_100g": vitaminA100G,
        "vitamin-a_unit": vitaminAUnit,
        "vitamin-a_value": vitaminAValue,
        "vitamin-d": vitaminD,
        "vitamin-d_100g": vitaminD100G,
        "vitamin-d_unit": vitaminDUnit,
        "vitamin-d_value": vitaminDValue,
        "carbon-footprint-from-meat-or-fish_100g": carbonFootprintFromMeatOrFish100G,
        "carbon-footprint-from-meat-or-fish_product": carbonFootprintFromMeatOrFishProduct,
        "carbon-footprint-from-meat-or-fish_serving": carbonFootprintFromMeatOrFishServing,
        "fruits-vegetables-nuts-estimate": fruitsVegetablesNutsEstimate,
        "fruits-vegetables-nuts-estimate_100g": fruitsVegetablesNutsEstimate100G,
        "fruits-vegetables-nuts-estimate_label": fruitsVegetablesNutsEstimateLabel,
        "fruits-vegetables-nuts-estimate_serving": fruitsVegetablesNutsEstimateServing,
        "fruits-vegetables-nuts-estimate_unit": unitValues.reverse[fruitsVegetablesNutsEstimateUnit],
        "fruits-vegetables-nuts-estimate_value": fruitsVegetablesNutsEstimateValue,
        "glucides assimilables": glucidesAssimilables,
        "glucides assimilables_100g": glucidesAssimilables100G,
        "glucides assimilables_serving": glucidesAssimilablesServing,
        "glucides assimilables_unit": unitValues.reverse[glucidesAssimilablesUnit],
        "glucides assimilables_value": glucidesAssimilablesValue,
        "omega-3-fat_serving": omega3FatServing,
        "poisson": poisson,
        "poisson_100g": poisson100G,
        "poisson_label": poissonLabel,
        "poisson_serving": poissonServing,
        "poisson_unit": unitValues.reverse[poissonUnit],
        "poisson_value": poissonValue,
        "fiber_modifier": fiberModifier,
        "fruits-vegetables-nuts": fruitsVegetablesNuts,
        "fruits-vegetables-nuts-dried": fruitsVegetablesNutsDried,
        "fruits-vegetables-nuts-dried_100g": fruitsVegetablesNutsDried100G,
        "fruits-vegetables-nuts-dried_serving": fruitsVegetablesNutsDriedServing,
        "fruits-vegetables-nuts-dried_unit": unitValues.reverse[fruitsVegetablesNutsDriedUnit],
        "fruits-vegetables-nuts-dried_value": fruitsVegetablesNutsDriedValue,
        "fruits-vegetables-nuts_100g": fruitsVegetablesNuts100G,
        "fruits-vegetables-nuts_serving": fruitsVegetablesNutsServing,
        "fruits-vegetables-nuts_unit": fruitsVegetablesNutsUnit,
        "fruits-vegetables-nuts_value": fruitsVegetablesNutsValue,
        "alcohol": alcohol,
        "alcohol_100g": alcohol100G,
        "alcohol_serving": alcoholServing,
        "alcohol_unit": alcoholUnit,
        "alcohol_value": alcoholValue,
        "fruits-vegetables-nuts_label": fruitsVegetablesNutsLabel,
    };
}

enum EnergyUnit {
    KCAL,
    KJ,
    K_J
}

final energyUnitValues = EnumValues({
    "kcal": EnergyUnit.KCAL,
    "kj": EnergyUnit.KJ,
    "kJ": EnergyUnit.K_J
});

class Nutriscore {
    int? categoryAvailable;
    DataClass? data;
    EcoscoreGrade? grade;
    int? nutrientsAvailable;
    int? nutriscoreApplicable;
    int? nutriscoreComputed;
    int? score;

    Nutriscore({
        this.categoryAvailable,
        this.data,
        this.grade,
        this.nutrientsAvailable,
        this.nutriscoreApplicable,
        this.nutriscoreComputed,
        this.score,
    });

    factory Nutriscore.fromJson(Map<String, dynamic> json) => Nutriscore(
        categoryAvailable: json["category_available"],
        data: json["data"] == null ? null : DataClass.fromJson(json["data"]),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        nutrientsAvailable: json["nutrients_available"],
        nutriscoreApplicable: json["nutriscore_applicable"],
        nutriscoreComputed: json["nutriscore_computed"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "category_available": categoryAvailable,
        "data": data?.toJson(),
        "grade": ecoscoreGradeValues.reverse[grade],
        "nutrients_available": nutrientsAvailable,
        "nutriscore_applicable": nutriscoreApplicable,
        "nutriscore_computed": nutriscoreComputed,
        "score": score,
    };
}

class DataClass {
    int? energy;
    int? energyPoints;
    int? energyValue;
    double? fiber;
    int? fiberPoints;
    double? fiberValue;
    double? fruitsVegetablesNutsColzaWalnutOliveOils;
    int? fruitsVegetablesNutsColzaWalnutOliveOilsPoints;
    double? fruitsVegetablesNutsColzaWalnutOliveOilsValue;
    int? isBeverage;
    int? isCheese;
    int? isFat;
    int? isWater;
    int? negativePoints;
    int? positivePoints;
    double? proteins;
    int? proteinsPoints;
    double? proteinsValue;
    double? saturatedFat;
    int? saturatedFatPoints;
    double? saturatedFatValue;
    int? sodium;
    int? sodiumPoints;
    int? sodiumValue;
    double? sugars;
    int? sugarsPoints;
    double? sugarsValue;
    EcoscoreGrade? grade;
    int? score;
    Components? components;
    int? countProteins;
    CountProteinsReason? countProteinsReason;
    int? isFatOilNutsSeeds;
    int? isRedMeatProduct;
    int? negativePointsMax;
    List<PositiveNutrient>? positiveNutrients;
    int? positivePointsMax;

    DataClass({
        this.energy,
        this.energyPoints,
        this.energyValue,
        this.fiber,
        this.fiberPoints,
        this.fiberValue,
        this.fruitsVegetablesNutsColzaWalnutOliveOils,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        this.isBeverage,
        this.isCheese,
        this.isFat,
        this.isWater,
        this.negativePoints,
        this.positivePoints,
        this.proteins,
        this.proteinsPoints,
        this.proteinsValue,
        this.saturatedFat,
        this.saturatedFatPoints,
        this.saturatedFatValue,
        this.sodium,
        this.sodiumPoints,
        this.sodiumValue,
        this.sugars,
        this.sugarsPoints,
        this.sugarsValue,
        this.grade,
        this.score,
        this.components,
        this.countProteins,
        this.countProteinsReason,
        this.isFatOilNutsSeeds,
        this.isRedMeatProduct,
        this.negativePointsMax,
        this.positiveNutrients,
        this.positivePointsMax,
    });

    factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
        energy: json["energy"],
        energyPoints: json["energy_points"],
        energyValue: json["energy_value"],
        fiber: json["fiber"]?.toDouble(),
        fiberPoints: json["fiber_points"],
        fiberValue: json["fiber_value"]?.toDouble(),
        fruitsVegetablesNutsColzaWalnutOliveOils: json["fruits_vegetables_nuts_colza_walnut_olive_oils"]?.toDouble(),
        fruitsVegetablesNutsColzaWalnutOliveOilsPoints: json["fruits_vegetables_nuts_colza_walnut_olive_oils_points"],
        fruitsVegetablesNutsColzaWalnutOliveOilsValue: json["fruits_vegetables_nuts_colza_walnut_olive_oils_value"]?.toDouble(),
        isBeverage: json["is_beverage"],
        isCheese: json["is_cheese"],
        isFat: json["is_fat"],
        isWater: json["is_water"],
        negativePoints: json["negative_points"],
        positivePoints: json["positive_points"],
        proteins: json["proteins"]?.toDouble(),
        proteinsPoints: json["proteins_points"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        saturatedFat: json["saturated_fat"]?.toDouble(),
        saturatedFatPoints: json["saturated_fat_points"],
        saturatedFatValue: json["saturated_fat_value"]?.toDouble(),
        sodium: json["sodium"],
        sodiumPoints: json["sodium_points"],
        sodiumValue: json["sodium_value"],
        sugars: json["sugars"]?.toDouble(),
        sugarsPoints: json["sugars_points"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        score: json["score"],
        components: json["components"] == null ? null : Components.fromJson(json["components"]),
        countProteins: json["count_proteins"],
        countProteinsReason: countProteinsReasonValues.map[json["count_proteins_reason"]]!,
        isFatOilNutsSeeds: json["is_fat_oil_nuts_seeds"],
        isRedMeatProduct: json["is_red_meat_product"],
        negativePointsMax: json["negative_points_max"],
        positiveNutrients: json["positive_nutrients"] == null ? [] : List<PositiveNutrient>.from(json["positive_nutrients"]!.map((x) => positiveNutrientValues.map[x]!)),
        positivePointsMax: json["positive_points_max"],
    );

    Map<String, dynamic> toJson() => {
        "energy": energy,
        "energy_points": energyPoints,
        "energy_value": energyValue,
        "fiber": fiber,
        "fiber_points": fiberPoints,
        "fiber_value": fiberValue,
        "fruits_vegetables_nuts_colza_walnut_olive_oils": fruitsVegetablesNutsColzaWalnutOliveOils,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_points": fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_value": fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        "is_beverage": isBeverage,
        "is_cheese": isCheese,
        "is_fat": isFat,
        "is_water": isWater,
        "negative_points": negativePoints,
        "positive_points": positivePoints,
        "proteins": proteins,
        "proteins_points": proteinsPoints,
        "proteins_value": proteinsValue,
        "saturated_fat": saturatedFat,
        "saturated_fat_points": saturatedFatPoints,
        "saturated_fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_points": sodiumPoints,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_points": sugarsPoints,
        "sugars_value": sugarsValue,
        "grade": ecoscoreGradeValues.reverse[grade],
        "score": score,
        "components": components?.toJson(),
        "count_proteins": countProteins,
        "count_proteins_reason": countProteinsReasonValues.reverse[countProteinsReason],
        "is_fat_oil_nuts_seeds": isFatOilNutsSeeds,
        "is_red_meat_product": isRedMeatProduct,
        "negative_points_max": negativePointsMax,
        "positive_nutrients": positiveNutrients == null ? [] : List<dynamic>.from(positiveNutrients!.map((x) => positiveNutrientValues.reverse[x])),
        "positive_points_max": positivePointsMax,
    };
}

class Components {
    List<Tive>? negative;
    List<Tive>? positive;

    Components({
        this.negative,
        this.positive,
    });

    factory Components.fromJson(Map<String, dynamic> json) => Components(
        negative: json["negative"] == null ? [] : List<Tive>.from(json["negative"]!.map((x) => Tive.fromJson(x))),
        positive: json["positive"] == null ? [] : List<Tive>.from(json["positive"]!.map((x) => Tive.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "negative": negative == null ? [] : List<dynamic>.from(negative!.map((x) => x.toJson())),
        "positive": positive == null ? [] : List<dynamic>.from(positive!.map((x) => x.toJson())),
    };
}

class Tive {
    PositiveNutrient? id;
    int? points;
    int? pointsMax;
    Unit? unit;
    double? value;

    Tive({
        this.id,
        this.points,
        this.pointsMax,
        this.unit,
        this.value,
    });

    factory Tive.fromJson(Map<String, dynamic> json) => Tive(
        id: positiveNutrientValues.map[json["id"]]!,
        points: json["points"],
        pointsMax: json["points_max"],
        unit: unitValues.map[json["unit"]]!,
        value: json["value"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": positiveNutrientValues.reverse[id],
        "points": points,
        "points_max": pointsMax,
        "unit": unitValues.reverse[unit],
        "value": value,
    };
}

enum PositiveNutrient {
    ENERGY,
    FIBER,
    FRUITS_VEGETABLES_LEGUMES,
    PROTEINS,
    SALT,
    SATURATED_FAT,
    SUGARS
}

final positiveNutrientValues = EnumValues({
    "energy": PositiveNutrient.ENERGY,
    "fiber": PositiveNutrient.FIBER,
    "fruits_vegetables_legumes": PositiveNutrient.FRUITS_VEGETABLES_LEGUMES,
    "proteins": PositiveNutrient.PROTEINS,
    "salt": PositiveNutrient.SALT,
    "saturated_fat": PositiveNutrient.SATURATED_FAT,
    "sugars": PositiveNutrient.SUGARS
});

enum CountProteinsReason {
    NEGATIVE_POINTS_GREATER_THAN_OR_EQUAL_TO_11,
    NEGATIVE_POINTS_LESS_THAN_11
}

final countProteinsReasonValues = EnumValues({
    "negative_points_greater_than_or_equal_to_11": CountProteinsReason.NEGATIVE_POINTS_GREATER_THAN_OR_EQUAL_TO_11,
    "negative_points_less_than_11": CountProteinsReason.NEGATIVE_POINTS_LESS_THAN_11
});

class NutriscoreData {
    int? energy;
    int? energyPoints;
    int? energyValue;
    double? fiber;
    int? fiberPoints;
    double? fiberValue;
    double? fruitsVegetablesNutsColzaWalnutOliveOils;
    int? fruitsVegetablesNutsColzaWalnutOliveOilsPoints;
    double? fruitsVegetablesNutsColzaWalnutOliveOilsValue;
    int? isBeverage;
    int? isCheese;
    int? isFat;
    int? isWater;
    int? negativePoints;
    int? positivePoints;
    double? proteins;
    int? proteinsPoints;
    double? proteinsValue;
    double? saturatedFat;
    int? saturatedFatPoints;
    double? saturatedFatValue;
    int? sodium;
    int? sodiumPoints;
    int? sodiumValue;
    double? sugars;
    int? sugarsPoints;
    double? sugarsValue;
    EcoscoreGrade? grade;
    int? score;

    NutriscoreData({
        this.energy,
        this.energyPoints,
        this.energyValue,
        this.fiber,
        this.fiberPoints,
        this.fiberValue,
        this.fruitsVegetablesNutsColzaWalnutOliveOils,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        this.fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        this.isBeverage,
        this.isCheese,
        this.isFat,
        this.isWater,
        this.negativePoints,
        this.positivePoints,
        this.proteins,
        this.proteinsPoints,
        this.proteinsValue,
        this.saturatedFat,
        this.saturatedFatPoints,
        this.saturatedFatValue,
        this.sodium,
        this.sodiumPoints,
        this.sodiumValue,
        this.sugars,
        this.sugarsPoints,
        this.sugarsValue,
        this.grade,
        this.score,
    });

    factory NutriscoreData.fromJson(Map<String, dynamic> json) => NutriscoreData(
        energy: json["energy"],
        energyPoints: json["energy_points"],
        energyValue: json["energy_value"],
        fiber: json["fiber"]?.toDouble(),
        fiberPoints: json["fiber_points"],
        fiberValue: json["fiber_value"]?.toDouble(),
        fruitsVegetablesNutsColzaWalnutOliveOils: json["fruits_vegetables_nuts_colza_walnut_olive_oils"]?.toDouble(),
        fruitsVegetablesNutsColzaWalnutOliveOilsPoints: json["fruits_vegetables_nuts_colza_walnut_olive_oils_points"],
        fruitsVegetablesNutsColzaWalnutOliveOilsValue: json["fruits_vegetables_nuts_colza_walnut_olive_oils_value"]?.toDouble(),
        isBeverage: json["is_beverage"],
        isCheese: json["is_cheese"],
        isFat: json["is_fat"],
        isWater: json["is_water"],
        negativePoints: json["negative_points"],
        positivePoints: json["positive_points"],
        proteins: json["proteins"]?.toDouble(),
        proteinsPoints: json["proteins_points"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        saturatedFat: json["saturated_fat"]?.toDouble(),
        saturatedFatPoints: json["saturated_fat_points"],
        saturatedFatValue: json["saturated_fat_value"]?.toDouble(),
        sodium: json["sodium"],
        sodiumPoints: json["sodium_points"],
        sodiumValue: json["sodium_value"],
        sugars: json["sugars"]?.toDouble(),
        sugarsPoints: json["sugars_points"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        grade: ecoscoreGradeValues.map[json["grade"]]!,
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "energy": energy,
        "energy_points": energyPoints,
        "energy_value": energyValue,
        "fiber": fiber,
        "fiber_points": fiberPoints,
        "fiber_value": fiberValue,
        "fruits_vegetables_nuts_colza_walnut_olive_oils": fruitsVegetablesNutsColzaWalnutOliveOils,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_points": fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_value": fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        "is_beverage": isBeverage,
        "is_cheese": isCheese,
        "is_fat": isFat,
        "is_water": isWater,
        "negative_points": negativePoints,
        "positive_points": positivePoints,
        "proteins": proteins,
        "proteins_points": proteinsPoints,
        "proteins_value": proteinsValue,
        "saturated_fat": saturatedFat,
        "saturated_fat_points": saturatedFatPoints,
        "saturated_fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_points": sodiumPoints,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_points": sugarsPoints,
        "sugars_value": sugarsValue,
        "grade": ecoscoreGradeValues.reverse[grade],
        "score": score,
    };
}

enum NutritionDataP {
    THE_100_G
}

final nutritionDataPValues = EnumValues({
    "100g": NutritionDataP.THE_100_G
});

enum OriginsLc {
    CS,
    EN,
    FI,
    FR,
    IT
}

final originsLcValues = EnumValues({
    "cs": OriginsLc.CS,
    "en": OriginsLc.EN,
    "fi": OriginsLc.FI,
    "fr": OriginsLc.FR,
    "it": OriginsLc.IT
});

enum Owner {
    CARREFOUR,
    FLEURYMICHON,
    LDC,
    MOUSQUETAIRES,
    OPENFOOD_CH,
    ORG_BONDUELLE,
    ORG_CARREFOUR,
    ORG_GROUPE_LDC,
    ORG_LES_MOUSQUETAIRES,
    ORG_SCAMARK,
    SCAMARK,
    SODEBO
}

final ownerValues = EnumValues({
    "carrefour": Owner.CARREFOUR,
    "fleurymichon": Owner.FLEURYMICHON,
    "ldc": Owner.LDC,
    "mousquetaires": Owner.MOUSQUETAIRES,
    "openfood-ch": Owner.OPENFOOD_CH,
    "org-bonduelle": Owner.ORG_BONDUELLE,
    "org-carrefour": Owner.ORG_CARREFOUR,
    "org-groupe-ldc": Owner.ORG_GROUPE_LDC,
    "org-les-mousquetaires": Owner.ORG_LES_MOUSQUETAIRES,
    "org-scamark": Owner.ORG_SCAMARK,
    "scamark": Owner.SCAMARK,
    "sodebo": Owner.SODEBO
});

enum PackagingTextEn {
    ALUMINIUM_CAN_TO_RECYCLE,
    EMPTY
}

final packagingTextEnValues = EnumValues({
    "aluminium can to recycle": PackagingTextEn.ALUMINIUM_CAN_TO_RECYCLE,
    "": PackagingTextEn.EMPTY
});

class PackagingsMaterials {
    All? all;
    All? enPlastic;
    Grades? enUnknown;
    Grades? enMetal;
    All? enPaperOrCardboard;

    PackagingsMaterials({
        this.all,
        this.enPlastic,
        this.enUnknown,
        this.enMetal,
        this.enPaperOrCardboard,
    });

    factory PackagingsMaterials.fromJson(Map<String, dynamic> json) => PackagingsMaterials(
        all: json["all"] == null ? null : All.fromJson(json["all"]),
        enPlastic: json["en:plastic"] == null ? null : All.fromJson(json["en:plastic"]),
        enUnknown: json["en:unknown"] == null ? null : Grades.fromJson(json["en:unknown"]),
        enMetal: json["en:metal"] == null ? null : Grades.fromJson(json["en:metal"]),
        enPaperOrCardboard: json["en:paper-or-cardboard"] == null ? null : All.fromJson(json["en:paper-or-cardboard"]),
    );

    Map<String, dynamic> toJson() => {
        "all": all?.toJson(),
        "en:plastic": enPlastic?.toJson(),
        "en:unknown": enUnknown?.toJson(),
        "en:metal": enMetal?.toJson(),
        "en:paper-or-cardboard": enPaperOrCardboard?.toJson(),
    };
}

class All {
    double? weight;
    double? weight100G;
    double? weightPercent;

    All({
        this.weight,
        this.weight100G,
        this.weightPercent,
    });

    factory All.fromJson(Map<String, dynamic> json) => All(
        weight: json["weight"]?.toDouble(),
        weight100G: json["weight_100g"]?.toDouble(),
        weightPercent: json["weight_percent"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "weight": weight,
        "weight_100g": weight100G,
        "weight_percent": weightPercent,
    };
}

enum PnnsGroups1 {
    COMPOSITE_FOODS,
    FISH_MEAT_EGGS,
    SALTY_SNACKS
}

final pnnsGroups1Values = EnumValues({
    "Composite foods": PnnsGroups1.COMPOSITE_FOODS,
    "Fish Meat Eggs": PnnsGroups1.FISH_MEAT_EGGS,
    "Salty snacks": PnnsGroups1.SALTY_SNACKS
});

enum PnnsGroups1Tag {
    COMPOSITE_FOODS,
    FISH_MEAT_EGGS,
    KNOWN,
    SALTY_SNACKS
}

final pnnsGroups1TagValues = EnumValues({
    "composite-foods": PnnsGroups1Tag.COMPOSITE_FOODS,
    "fish-meat-eggs": PnnsGroups1Tag.FISH_MEAT_EGGS,
    "known": PnnsGroups1Tag.KNOWN,
    "salty-snacks": PnnsGroups1Tag.SALTY_SNACKS
});

enum PnnsGroups2 {
    FISH_AND_SEAFOOD,
    ONE_DISH_MEALS,
    SALTY_AND_FATTY_PRODUCTS
}

final pnnsGroups2Values = EnumValues({
    "Fish and seafood": PnnsGroups2.FISH_AND_SEAFOOD,
    "One-dish meals": PnnsGroups2.ONE_DISH_MEALS,
    "Salty and fatty products": PnnsGroups2.SALTY_AND_FATTY_PRODUCTS
});

enum PnnsGroups2Tag {
    FISH_AND_SEAFOOD,
    KNOWN,
    ONE_DISH_MEALS,
    SALTY_AND_FATTY_PRODUCTS
}

final pnnsGroups2TagValues = EnumValues({
    "fish-and-seafood": PnnsGroups2Tag.FISH_AND_SEAFOOD,
    "known": PnnsGroups2Tag.KNOWN,
    "one-dish-meals": PnnsGroups2Tag.ONE_DISH_MEALS,
    "salty-and-fatty-products": PnnsGroups2Tag.SALTY_AND_FATTY_PRODUCTS
});

class SelectedImages {
    SelectedImagesFront? front;

    SelectedImages({
        this.front,
    });

    factory SelectedImages.fromJson(Map<String, dynamic> json) => SelectedImages(
        front: json["front"] == null ? null : SelectedImagesFront.fromJson(json["front"]),
    );

    Map<String, dynamic> toJson() => {
        "front": front?.toJson(),
    };
}

class SelectedImagesFront {
    Display? display;
    Display? small;
    Display? thumb;

    SelectedImagesFront({
        this.display,
        this.small,
        this.thumb,
    });

    factory SelectedImagesFront.fromJson(Map<String, dynamic> json) => SelectedImagesFront(
        display: json["display"] == null ? null : Display.fromJson(json["display"]),
        small: json["small"] == null ? null : Display.fromJson(json["small"]),
        thumb: json["thumb"] == null ? null : Display.fromJson(json["thumb"]),
    );

    Map<String, dynamic> toJson() => {
        "display": display?.toJson(),
        "small": small?.toJson(),
        "thumb": thumb?.toJson(),
    };
}

class Display {
    String? en;
    String? fr;
    String? de;
    String? fi;
    String? it;
    String? cs;

    Display({
        this.en,
        this.fr,
        this.de,
        this.fi,
        this.it,
        this.cs,
    });

    factory Display.fromJson(Map<String, dynamic> json) => Display(
        en: json["en"],
        fr: json["fr"],
        de: json["de"],
        fi: json["fi"],
        it: json["it"],
        cs: json["cs"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "fr": fr,
        "de": de,
        "fi": fi,
        "it": it,
        "cs": cs,
    };
}

class Source {
    List<String>? fields;
    Owner? id;
    List<String>? images;
    int? importT;
    dynamic manufacturer;
    SourceName? name;
    String? url;
    String? sourceLicence;
    String? sourceLicenceUrl;

    Source({
        this.fields,
        this.id,
        this.images,
        this.importT,
        this.manufacturer,
        this.name,
        this.url,
        this.sourceLicence,
        this.sourceLicenceUrl,
    });

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        fields: json["fields"] == null ? [] : List<String>.from(json["fields"]!.map((x) => x)),
        id: ownerValues.map[json["id"]]!,
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
        importT: json["import_t"],
        manufacturer: json["manufacturer"],
        name: sourceNameValues.map[json["name"]]!,
        url: json["url"],
        sourceLicence: json["source_licence"],
        sourceLicenceUrl: json["source_licence_url"],
    );

    Map<String, dynamic> toJson() => {
        "fields": fields == null ? [] : List<dynamic>.from(fields!.map((x) => x)),
        "id": ownerValues.reverse[id],
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "import_t": importT,
        "manufacturer": manufacturer,
        "name": sourceNameValues.reverse[name],
        "url": url,
        "source_licence": sourceLicence,
        "source_licence_url": sourceLicenceUrl,
    };
}

enum SourceName {
    BONDUELLE,
    CARREFOUR,
    FLEURY_MICHON,
    FOOD_REPO,
    GROUPE_LDC,
    LDC,
    LES_MOUSQUETAIRES,
    MOUSQUETAIRES,
    NAME_CARREFOUR,
    NAME_SCAMARK,
    SCAMARK,
    SODEBO
}

final sourceNameValues = EnumValues({
    "bonduelle": SourceName.BONDUELLE,
    "carrefour": SourceName.CARREFOUR,
    "Fleury Michon": SourceName.FLEURY_MICHON,
    "FoodRepo": SourceName.FOOD_REPO,
    "groupe-ldc": SourceName.GROUPE_LDC,
    "LDC": SourceName.LDC,
    "les-mousquetaires": SourceName.LES_MOUSQUETAIRES,
    "Mousquetaires": SourceName.MOUSQUETAIRES,
    "Carrefour": SourceName.NAME_CARREFOUR,
    "scamark": SourceName.NAME_SCAMARK,
    "Scamark": SourceName.SCAMARK,
    "Sodebo": SourceName.SODEBO
});

class SourcesFields {
    OrgGs1? orgGs1;

    SourcesFields({
        this.orgGs1,
    });

    factory SourcesFields.fromJson(Map<String, dynamic> json) => SourcesFields(
        orgGs1: json["org-gs1"] == null ? null : OrgGs1.fromJson(json["org-gs1"]),
    );

    Map<String, dynamic> toJson() => {
        "org-gs1": orgGs1?.toJson(),
    };
}

class OrgGs1 {
    String? gln;
    String? gpcCategoryCode;
    String? isAllergenRelevantDataProvided;
    DateTime? lastChangeDateTime;
    String? partyName;

    OrgGs1({
        this.gln,
        this.gpcCategoryCode,
        this.isAllergenRelevantDataProvided,
        this.lastChangeDateTime,
        this.partyName,
    });

    factory OrgGs1.fromJson(Map<String, dynamic> json) => OrgGs1(
        gln: json["gln"],
        gpcCategoryCode: json["gpcCategoryCode"],
        isAllergenRelevantDataProvided: json["isAllergenRelevantDataProvided"],
        lastChangeDateTime: json["lastChangeDateTime"] == null ? null : DateTime.parse(json["lastChangeDateTime"]),
        partyName: json["partyName"],
    );

    Map<String, dynamic> toJson() => {
        "gln": gln,
        "gpcCategoryCode": gpcCategoryCode,
        "isAllergenRelevantDataProvided": isAllergenRelevantDataProvided,
        "lastChangeDateTime": lastChangeDateTime?.toIso8601String(),
        "partyName": partyName,
    };
}

class SpecificIngredient {
    String? id;
    String? ingredient;
    String? label;
    String? origins;
    String? text;

    SpecificIngredient({
        this.id,
        this.ingredient,
        this.label,
        this.origins,
        this.text,
    });

    factory SpecificIngredient.fromJson(Map<String, dynamic> json) => SpecificIngredient(
        id: json["id"],
        ingredient: json["ingredient"],
        label: json["label"],
        origins: json["origins"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "ingredient": ingredient,
        "label": label,
        "origins": origins,
        "text": text,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
