from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Papaa_Map_Mutation_Class_Py_V0_1_0 = CommandToolBuilder(tool="papaa_map_mutation_class.py", base_command=["papaa_map_mutation_class.py"], inputs=[ToolInput(tag="in_classifier_decisions", input_type=File(optional=True), prefix="--classifier_decisions", doc=InputDocumentation(doc="string of the location of classifier decision file\nwith predictions or scores")), ToolInput(tag="in_path_genes", input_type=File(optional=True), prefix="--path_genes", doc=InputDocumentation(doc="pathway gene list file")), ToolInput(tag="in_copy_number", input_type=Boolean(optional=True), prefix="--copy_number", doc=InputDocumentation(doc="optional flag to include copy number info in map")), ToolInput(tag="in_filename_copy_loss", input_type=File(optional=True), prefix="--filename_copy_loss", doc=InputDocumentation(doc="Filename of copy number loss")), ToolInput(tag="in_filename_copy_gain", input_type=File(optional=True), prefix="--filename_copy_gain", doc=InputDocumentation(doc="Filename of copy number gain")), ToolInput(tag="in_filename_raw_mut", input_type=File(optional=True), prefix="--filename_raw_mut", doc=InputDocumentation(doc="Filename of raw mut MAF\n"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Map_Mutation_Class_Py_V0_1_0().translate("wdl")

