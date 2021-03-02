from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Novoutil_Tag_V0_1_0 = CommandToolBuilder(tool="novoutil_tag", base_command=["novoutil", "tag"], inputs=[ToolInput(tag="in_ref_idx", input_type=String(), position=0, doc=InputDocumentation(doc="is an indexed reference sequence created by Novoindex.")), ToolInput(tag="in_k_mer", input_type=String(), position=1, doc=InputDocumentation(doc="is a nucleotide tag not longer than index k-mer length."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Tag_V0_1_0().translate("wdl", allow_empty_container=True)

