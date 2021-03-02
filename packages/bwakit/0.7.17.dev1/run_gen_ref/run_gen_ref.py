from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Run_Gen_Ref_V0_1_0 = CommandToolBuilder(tool="run_gen_ref", base_command=["run-gen-ref"], inputs=[ToolInput(tag="in_hs_three_eight", input_type=Int(), position=0, doc=InputDocumentation(doc="primary assembly of GRCh38 (incl. chromosomes, unplaced and unlocalized contigs) and EBV")), ToolInput(tag="in_hs_three_eight_a", input_type=Int(), position=1, doc=InputDocumentation(doc="hs38 plus ALT contigs")), ToolInput(tag="in_hs_three_eight_dh", input_type=Int(), position=2, doc=InputDocumentation(doc="hs38a plus decoy contigs and HLA genes (recommended for GRCh38 mapping)")), ToolInput(tag="in_hs_three_seven", input_type=Int(), position=3, doc=InputDocumentation(doc="primary assembly of GRCh37 (used by 1000g phase 1) plus the EBV genome")), ToolInput(tag="in_hs_three_seven_d_five", input_type=Int(), position=4, doc=InputDocumentation(doc="hs37 plus decoy contigs (used by 1000g phase 3)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Gen_Ref_V0_1_0().translate("wdl", allow_empty_container=True)

