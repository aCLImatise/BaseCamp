from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Prepare_Signature_Pl_V0_1_0 = CommandToolBuilder(tool="prepare_signature.pl", base_command=["prepare_signature.pl"], inputs=[ToolInput(tag="in_fasta_file_influence", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Fasta file with the sequences of known mature miRNAs for the species.\nThese sequences will not influence the miRDeep scoring, but will\nsubsequently make it easy to estimate sensitivity of the run.")), ToolInput(tag="in_output_progress_screen", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output progress to screen"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Signature_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

