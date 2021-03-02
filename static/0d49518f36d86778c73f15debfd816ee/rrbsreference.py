from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rrbsreference_V0_1_0 = CommandToolBuilder(tool="rrbsreference", base_command=["rrbsreference"], inputs=[ToolInput(tag="in_ref_dot_nix", input_type=String(), position=0, doc=InputDocumentation(doc="is an unmasked indexed reference genome from novoindex")), ToolInput(tag="in_maxlength", input_type=String(), position=1, doc=InputDocumentation(doc="is maximum expected read length and sets maximum distance between unmasked CCGG sites.")), ToolInput(tag="in_ccgg_dot_tsv", input_type=String(), position=2, doc=InputDocumentation(doc="is a list of CCGG sites in the reference. This list can be generated with the command\nnovoutil tag ref.nix CCGG | sort -k 1,1 -k2,2n >CCGG.tsv\nref.nix is a normal (NOT a bisulphite index) novoindex of the reference fasta file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rrbsreference_V0_1_0().translate("wdl", allow_empty_container=True)

