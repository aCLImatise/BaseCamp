from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, File

Velveth_V0_1_0 = CommandToolBuilder(tool="velveth", base_command=["velveth"], inputs=[ToolInput(tag="in_interleaved", input_type=Boolean(optional=True), prefix="-interleaved", doc=InputDocumentation(doc=": File contains paired reads interleaved in the one file (default)")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="-separate", doc=InputDocumentation(doc=": Read 2 separate files for paired reads")), ToolInput(tag="in_strand_specific", input_type=Boolean(optional=True), prefix="-strand_specific", doc=InputDocumentation(doc=": for strand specific transcriptome sequencing data (default: off)")), ToolInput(tag="in_reuse_sequences", input_type=Boolean(optional=True), prefix="-reuse_Sequences", doc=InputDocumentation(doc=": reuse Sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)")), ToolInput(tag="in_reuse_binary", input_type=Boolean(optional=True), prefix="-reuse_binary", doc=InputDocumentation(doc=": reuse binary sequences file (or link) already in directory (no need to provide original filenames in this case (default: off)")), ToolInput(tag="in_no_hash", input_type=Boolean(optional=True), prefix="-noHash", doc=InputDocumentation(doc=": simply prepare Sequences file, do not hash reads or prepare Roadmaps file (default: off)")), ToolInput(tag="in_create_binary", input_type=Boolean(optional=True), prefix="-create_binary", doc=InputDocumentation(doc=": create binary CnyUnifiedSeq file (default: off)")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=": directory name for output files")), ToolInput(tag="in_hash_length", input_type=String(), position=1, doc=InputDocumentation(doc=": EITHER an odd integer (if even, it will be decremented) <= 191 (if above, will be reduced)\n: OR: m,M,s where m and M are odd integers (if not, they will be decremented) with m < M <= 191 (if above, will be reduced)\nand s is a step (even number). Velvet will then hash from k=m to k=M with a step of s")), ToolInput(tag="in_filename", input_type=File(), position=2, doc=InputDocumentation(doc=": path to sequence file or - for standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Velveth_V0_1_0().translate("wdl", allow_empty_container=True)

