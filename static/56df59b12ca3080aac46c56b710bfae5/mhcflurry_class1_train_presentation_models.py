from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Boolean

Mhcflurry_Class1_Train_Presentation_Models_V0_1_0 = CommandToolBuilder(tool="mhcflurry_class1_train_presentation_models", base_command=["mhcflurry-class1-train-presentation-models"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Training data CSV. Expected columns: peptide, n_flank,\nc_flank, hit")), ToolInput(tag="in_out_models_dir", input_type=Directory(optional=True), prefix="--out-models-dir", doc=InputDocumentation(doc="Directory to write models and manifest")), ToolInput(tag="in_affinity_predictor", input_type=String(optional=True), prefix="--affinity-predictor", doc=InputDocumentation(doc="Affinity predictor models dir")), ToolInput(tag="in_processing_predictor_with_flanks", input_type=String(optional=True), prefix="--processing-predictor-with-flanks", doc=InputDocumentation(doc="Processing predictor with flanks")), ToolInput(tag="in_processing_predictor_without_flanks", input_type=String(optional=True), prefix="--processing-predictor-without-flanks", doc=InputDocumentation(doc="Processing predictor without flanks")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Default: 1")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Launch python debugger on error")), ToolInput(tag="in_hla_column", input_type=String(optional=True), prefix="--hla-column", doc=InputDocumentation(doc="Column in data giving space-separated MHC I alleles")), ToolInput(tag="in_target_column", input_type=Int(optional=True), prefix="--target-column", doc=InputDocumentation(doc="Column in data giving hit (1) vs decoy (0)\n")), ToolInput(tag="in_train", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_class_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_presentation", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_models_dot", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mhcflurry_Class1_Train_Presentation_Models_V0_1_0().translate("wdl")

