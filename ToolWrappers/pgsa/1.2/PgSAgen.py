from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Pgsagen_V0_1_0 = CommandToolBuilder(tool="PgSAgen", base_command=["PgSAgen"], inputs=[ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="kmer length")), ToolInput(tag="in_cache_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="cache file")), ToolInput(tag="in_pg_no_sa", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Pg, no SA")), ToolInput(tag="in_use_after_generation", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="(use after generation)")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_srcfile", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pair_srcfile", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pgsagen_V0_1_0().translate("wdl", allow_empty_container=True)

