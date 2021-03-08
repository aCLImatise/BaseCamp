from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Planemo_List_Repos_V0_1_0 = CommandToolBuilder(tool="planemo_list_repos", base_command=["planemo", "list_repos"], inputs=[ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Paths to exclude.")), ToolInput(tag="in_exclude_from", input_type=File(optional=True), prefix="--exclude_from", doc=InputDocumentation(doc="File of paths to exclude.")), ToolInput(tag="in_changed_in_commit_range", input_type=String(optional=True), prefix="--changed_in_commit_range", doc=InputDocumentation(doc="Exclude paths unchanged in git commit range.")), ToolInput(tag="in_chunk_count", input_type=Int(optional=True), prefix="--chunk_count", doc=InputDocumentation(doc="Split output into chunks of this many item\nand print --chunk such group.")), ToolInput(tag="in_chunk", input_type=Int(optional=True), prefix="--chunk", doc=InputDocumentation(doc="When output is split into --chunk_count\ngroups, output the group 0-indexedby this\noption.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File to output to, or - for standard output.")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File to output to, or - for standard output."))], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_List_Repos_V0_1_0().translate("wdl")

