from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Protein_Alignment_From_Nucleotides_V0_1_0 = CommandToolBuilder(tool="protein_alignment_from_nucleotides", base_command=["protein_alignment_from_nucleotides"], inputs=[ToolInput(tag="in_nucleotide_alignment_mafft", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="nucleotide alignment with MAFFT")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protein_Alignment_From_Nucleotides_V0_1_0().translate("wdl", allow_empty_container=True)

