from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bp_Seq_Length_Pl_V0_1_0 = CommandToolBuilder(tool="bp_seq_length.pl", base_command=["bp_seq_length.pl"], inputs=[ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="- Specify the database format ('fasta' is default).\nThis script uses SeqIO and as such formats are\nlimited to those which SeqIO system supports.")), ToolInput(tag="in_bioperl_lat_bioperl_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="- General discussion"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Seq_Length_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

