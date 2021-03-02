from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Overmerry_V0_1_0 = CommandToolBuilder(tool="overmerry", base_command=["overmerry"], inputs=[ToolInput(tag="in_path_to_gkpstore", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="path to the gkpStore")), ToolInput(tag="in_mer_size_bases", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="mer size in bases")), ToolInput(tag="in_compression_level_homopolymer", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="compression level; homopolymer runs longer than this length\nare compressed to exactly this length")), ToolInput(tag="in_ignore_mers_occuring", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="ignore mers occuring more than 'threshold' times")), ToolInput(tag="in_mc", input_type=File(optional=True), prefix="-mc", doc=InputDocumentation(doc="file of mercounts")), ToolInput(tag="in_number_compute_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of compute threads")), ToolInput(tag="in_tb", input_type=String(optional=True), prefix="-tb", doc=InputDocumentation(doc="hash table fragment IID range")), ToolInput(tag="in_te", input_type=String(optional=True), prefix="-te", doc=InputDocumentation(doc="hash table fragment IID range\nfragments with IID x, m <= x < n, are used for the hash table")), ToolInput(tag="in_qb", input_type=String(optional=True), prefix="-qb", doc=InputDocumentation(doc="query fragment IID range (must be >= -tb)")), ToolInput(tag="in_qe", input_type=String(optional=True), prefix="-qe", doc=InputDocumentation(doc="query fragment IID range\nfragments with IID y, M <= y < N, are used for the queries")), ToolInput(tag="in_entertain_user_progress", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="entertain the user with progress reports")), ToolInput(tag="in_output_written_here", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output written here")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overmerry_V0_1_0().translate("wdl", allow_empty_container=True)

