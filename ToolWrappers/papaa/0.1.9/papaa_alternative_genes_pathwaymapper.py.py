from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Papaa_Alternative_Genes_Pathwaymapper_Py_V0_1_0 = CommandToolBuilder(tool="papaa_alternative_genes_pathwaymapper.py", base_command=["papaa_alternative_genes_pathwaymapper.py"], inputs=[ToolInput(tag="in_classifier_decisions", input_type=File(optional=True), prefix="--classifier_decisions", doc=InputDocumentation(doc="string of the location of classifier decisions file\nwith predictions/scores")), ToolInput(tag="in_genes", input_type=File(optional=True), prefix="--genes", doc=InputDocumentation(doc="string of the genes to extract or genelist file")), ToolInput(tag="in_path_genes", input_type=File(optional=True), prefix="--path_genes", doc=InputDocumentation(doc="pathway gene list file")), ToolInput(tag="in_filename_mut", input_type=File(optional=True), prefix="--filename_mut", doc=InputDocumentation(doc="Filename of sample/gene mutations to use in model")), ToolInput(tag="in_filename_sample", input_type=File(optional=True), prefix="--filename_sample", doc=InputDocumentation(doc="Filename of patient/samples to use in model")), ToolInput(tag="in_copy_number", input_type=Boolean(optional=True), prefix="--copy_number", doc=InputDocumentation(doc="optional flag to include copy number info in pathway")), ToolInput(tag="in_filename_copy_gain", input_type=File(optional=True), prefix="--filename_copy_gain", doc=InputDocumentation(doc="Filename of copy number gain\n")), ToolInput(tag="in_map", input_type=String(), position=0, doc=InputDocumentation(doc="--filename_copy_loss FILENAME_COPY_LOSS"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Alternative_Genes_Pathwaymapper_Py_V0_1_0().translate("wdl")

