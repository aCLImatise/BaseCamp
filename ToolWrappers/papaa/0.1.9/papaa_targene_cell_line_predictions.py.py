from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Papaa_Targene_Cell_Line_Predictions_Py_V0_1_0 = CommandToolBuilder(tool="papaa_targene_cell_line_predictions.py", base_command=["papaa_targene_cell_line_predictions.py"], inputs=[ToolInput(tag="in_tar_genes", input_type=File(optional=True), prefix="--targenes", doc=InputDocumentation(doc="string of the genes to extract or gene list file")), ToolInput(tag="in_path_genes", input_type=File(optional=True), prefix="--path_genes", doc=InputDocumentation(doc="pathway gene list file")), ToolInput(tag="in_classifier_summary", input_type=File(optional=True), prefix="--classifier_summary", doc=InputDocumentation(doc="location of classifier_summary file")), ToolInput(tag="in_cc_le_rnase_q", input_type=File(optional=True), prefix="--ccle_rnaseq", doc=InputDocumentation(doc="path for ccle_rnaseq data file")), ToolInput(tag="in_cc_le_mut", input_type=File(optional=True), prefix="--ccle_mut", doc=InputDocumentation(doc="path for ccle mutational data file")), ToolInput(tag="in_cc_le_maf", input_type=File(optional=True), prefix="--ccle_maf", doc=InputDocumentation(doc="path for ccle variant data file")), ToolInput(tag="in_g_dsc_rnase_q", input_type=File(optional=True), prefix="--gdsc_rnaseq", doc=InputDocumentation(doc="path for gdsc_rnaseq data file")), ToolInput(tag="in_g_dsc_mut", input_type=File(optional=True), prefix="--gdsc_mut", doc=InputDocumentation(doc="path for gdsc/ccle common mutational data file")), ToolInput(tag="in_gds_cone_phar", input_type=Int(optional=True), prefix="--gdsc1_phar", doc=InputDocumentation(doc="path for GDSC1 pharmacological data file")), ToolInput(tag="in_g_dsc_two_phar", input_type=Int(optional=True), prefix="--gdsc2_phar", doc=InputDocumentation(doc="path for GDSC2 pharmacological data file\n"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Targene_Cell_Line_Predictions_Py_V0_1_0().translate("wdl")

