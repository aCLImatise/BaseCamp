from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int

Sketchy_Survey_Link_V0_1_0 = CommandToolBuilder(tool="sketchy_survey_link", base_command=["sketchy", "survey", "link"], inputs=[ToolInput(tag="in_iid", input_type=File(optional=True), prefix="--iid", doc=InputDocumentation(doc="Path to isolate ID file from Pathfinder Survey")), ToolInput(tag="in_directory", input_type=File(optional=True), prefix="--directory", doc=InputDocumentation(doc="Path to directory from which to extract files")), ToolInput(tag="in_column", input_type=String(optional=True), prefix="--column", doc=InputDocumentation(doc="Use a header and column name to parse isolate IDs\n[None]")), ToolInput(tag="in_extension", input_type=File(optional=True), prefix="--extension", doc=InputDocumentation(doc="File extension to link isolate IDs to file [.fasta]")), ToolInput(tag="in_symlink", input_type=Directory(optional=True), prefix="--symlink", doc=InputDocumentation(doc="Symlink the detected files to the output directory.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="If symlink, output directory for symbolic links to\nfiles [sketchy_link]")), ToolInput(tag="in_bootstrap", input_type=Int(optional=True), prefix="--bootstrap", doc=InputDocumentation(doc="Bootstrap sample isolate IDs"))], outputs=[ToolOutput(tag="out_symlink", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_symlink", type_hint=File()), doc=OutputDocumentation(doc="Symlink the detected files to the output directory.")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="If symlink, output directory for symbolic links to\nfiles [sketchy_link]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Survey_Link_V0_1_0().translate("wdl")

