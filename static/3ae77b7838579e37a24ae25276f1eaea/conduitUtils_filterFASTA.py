from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Conduitutils_Filterfasta_V0_1_0 = CommandToolBuilder(tool="conduitUtils_filterFASTA", base_command=["conduitUtils", "filterFASTA"], inputs=[ToolInput(tag="in_minimum_number_support", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="(5)\nMinimum number of reads that must support an isoform for it to be reported in the filtered FASTA\n"))], outputs=[], container="quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conduitutils_Filterfasta_V0_1_0().translate("wdl")

