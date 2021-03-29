from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory

Nf_Core_Create_V0_1_0 = CommandToolBuilder(tool="nf_core_create", base_command=["nf-core", "create"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="The name of your new pipeline  [required]")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="A short description of your pipeline  [required]")), ToolInput(tag="in_author", input_type=String(optional=True), prefix="--author", doc=InputDocumentation(doc="Name of the main author(s)  [required]")), ToolInput(tag="in_no_git", input_type=Boolean(optional=True), prefix="--no-git", doc=InputDocumentation(doc="Do not initialise pipeline as new git repository")), ToolInput(tag="in_force", input_type=Directory(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output directory if it already exists")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for new pipeline (default: pipeline\nname)"))], outputs=[ToolOutput(tag="out_force", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output directory if it already exists")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for new pipeline (default: pipeline\nname)"))], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Create_V0_1_0().translate("wdl")

