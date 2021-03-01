from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, Int, String

Phyluce_Snp_Phase_Uces_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_phase_uces", base_command=["phyluce_snp_phase_uces"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A configuration file containing the reference-to-read\nsample mapping and some metadata")), ToolInput(tag="in_bams", input_type=Directory(optional=True), prefix="--bams", doc=InputDocumentation(doc="The directory containing sample-specific BAM files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the SNPs files")), ToolInput(tag="in_conservative", input_type=Boolean(optional=True), prefix="--conservative", doc=InputDocumentation(doc="Use this flag if you want to discard all base calls\nwith limited certainty (covered by <3 reads). This\nwill produce the ambiguity character 'N' instead of\nthat potential base call in the final sequence.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="For parallel processing you can choose the number of\ncores you want CLC to run on.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Phase_Uces_V0_1_0().translate("wdl", allow_empty_container=True)

