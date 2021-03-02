from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Directory

Tango_Search_V0_1_0 = CommandToolBuilder(tool="tango_search", base_command=["tango", "search"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Choice of search mode for diamond: 'blastx' (default)\nfor DNA query sequences or 'blastp' for amino acid\nquery sequences")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of cpus to use for diamond")), ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="--blocksize", doc=InputDocumentation(doc="Sequence block size in billions of letters\n(default=2.0). Set to 20 on clusters")), ToolInput(tag="in_chunks", input_type=Int(optional=True), prefix="--chunks", doc=InputDocumentation(doc="Number of chunks for index processing (default=4)")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="Report alignments within this percentage range of top\nbitscore (default=10)")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="maximum e-value to report alignments (default=0.001)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length of queries. Shorter queries will be\nfiltered prior to search.")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="directory for temporary files\n")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="Query contig nucleotide file")), ToolInput(tag="in_dbfile", input_type=String(), position=1, doc=InputDocumentation(doc="Diamond database file")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc="Diamond output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tango_Search_V0_1_0().translate("wdl", allow_empty_container=True)

