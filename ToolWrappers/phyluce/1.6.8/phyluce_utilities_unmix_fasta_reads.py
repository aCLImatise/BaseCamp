from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Phyluce_Utilities_Unmix_Fasta_Reads_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_unmix_fasta_reads", base_command=["phyluce_utilities_unmix_fasta_reads"], inputs=[ToolInput(tag="in_mixed_reads", input_type=File(optional=True), prefix="--mixed-reads", doc=InputDocumentation(doc="The file containing mixed fasta reads with  and \ndesignators for reads.")), ToolInput(tag="in_singleton_reads", input_type=File(optional=True), prefix="--singleton-reads", doc=InputDocumentation(doc="The file containing singleton fasta reads.")), ToolInput(tag="in_out_r_one", input_type=Int(optional=True), prefix="--out-r1", doc=InputDocumentation(doc="The output fasta for R1.")), ToolInput(tag="in_out_r_two", input_type=Int(optional=True), prefix="--out-r2", doc=InputDocumentation(doc="The output fasta for R2.")), ToolInput(tag="in_out_r_singleton", input_type=String(optional=True), prefix="--out-r-singleton", doc=InputDocumentation(doc="The output fasta for singleton reads (RS).")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Unmix_Fasta_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

