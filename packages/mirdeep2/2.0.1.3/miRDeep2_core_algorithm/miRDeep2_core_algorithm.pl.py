from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Mirdeep2_Core_Algorithm_Pl_V0_1_0 = CommandToolBuilder(tool="miRDeep2_core_algorithm.pl", base_command=["miRDeep2_core_algorithm.pl"], inputs=[ToolInput(tag="in_this_usage", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this usage")), ToolInput(tag="in_file_known_mirnas", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="file with known miRNAs")), ToolInput(tag="in_filtered", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="filtered")), ToolInput(tag="in_output_only_ids", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="output (only ids)")), ToolInput(tag="in_default", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="(default 1)")), ToolInput(tag="in_option_sanger_sequences", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="option for Sanger sequences")), ToolInput(tag="in_with_randfold_pvalues", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="with randfold p-values")), ToolInput(tag="in_drosha_processing", input_type=String(optional=True), prefix="-z", doc=InputDocumentation(doc="Drosha processing"))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirdeep2_Core_Algorithm_Pl_V0_1_0().translate("wdl")

