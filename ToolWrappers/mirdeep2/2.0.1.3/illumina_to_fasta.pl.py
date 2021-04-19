from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Illumina_To_Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="illumina_to_fasta.pl", base_command=["illumina_to_fasta.pl"], inputs=[ToolInput(tag="in_format_is_qseqtxt", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="format is qseq.txt"))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Illumina_To_Fasta_Pl_V0_1_0().translate("wdl")

