from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Survey_Pl_V0_1_0 = CommandToolBuilder(tool="survey.pl", base_command=["survey.pl"], inputs=[ToolInput(tag="in_file_outputted_controls", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="file outputted by controls")), ToolInput(tag="in_mature_mirna_fasta", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="mature miRNA fasta reference file for the species")), ToolInput(tag="in_signature_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="signature file")), ToolInput(tag="in_read_stack_height", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="read stack height necessary for triggering excision"))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Survey_Pl_V0_1_0().translate("wdl")

