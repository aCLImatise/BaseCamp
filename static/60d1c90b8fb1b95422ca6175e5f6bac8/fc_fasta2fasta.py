from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fc_Fasta2Fasta_V0_1_0 = CommandToolBuilder(tool="fc_fasta2fasta", base_command=["fc_fasta2fasta"], inputs=[ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress intermediate fasta with gzip. (Not currently\nimplemented.)")), ToolInput(tag="in_z_mw_start", input_type=Int(optional=True), prefix="--zmw-start", doc=InputDocumentation(doc="Ignore the zmw number in the fasta header. Instead,\nuse a global counter, starting at this numer.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Fasta2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

