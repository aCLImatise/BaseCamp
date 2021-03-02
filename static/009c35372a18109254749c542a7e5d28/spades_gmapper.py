from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory

Spades_Gmapper_V0_1_0 = CommandToolBuilder(tool="spades_gmapper", base_command=["spades-gmapper"], inputs=[ToolInput(tag="in_kmer_length_use", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length to use")), ToolInput(tag="in__threads_use", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp-dir", doc=InputDocumentation(doc="scratch directory to use\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Gmapper_V0_1_0().translate("wdl", allow_empty_container=True)

