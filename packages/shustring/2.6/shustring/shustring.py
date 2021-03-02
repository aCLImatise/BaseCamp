from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Shustring_V0_1_0 = CommandToolBuilder(tool="shustring", base_command=["shustring"], inputs=[ToolInput(tag="in_general", input_type=String(), position=0, doc=InputDocumentation(doc="[-q quiet - do not print shustrings; default: print shustrings]\n[-n nucleotide sequence (DNA); default: arbitrary ASCII strings]\n[-r include reverse complement (implies -n); default: only forward strand]\n[-u preserve IUPAC nomenclature in nucleotide sequences; default: convert to ACGT]\n[-p print information about program]\n[-h print this help message]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shustring_V0_1_0().translate("wdl", allow_empty_container=True)

