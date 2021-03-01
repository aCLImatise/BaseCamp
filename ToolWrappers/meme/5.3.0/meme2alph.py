from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Meme2Alph_V0_1_0 = CommandToolBuilder(tool="meme2alph", base_command=["meme2alph"], inputs=[ToolInput(tag="in_motifs_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme2Alph_V0_1_0().translate("wdl")

