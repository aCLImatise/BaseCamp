from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Funannotate_Remote_V0_1_0 = CommandToolBuilder(tool="funannotate_remote", base_command=["funannotate", "remote"], inputs=[ToolInput(tag="in_methods", input_type=Boolean(optional=True), prefix="--methods", doc=InputDocumentation(doc="Which services to run, space separated [phobius,antismash,all]")), ToolInput(tag="in_email", input_type=Boolean(optional=True), prefix="--email", doc=InputDocumentation(doc="Email address to identify yourself to services.")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Funannotate input folder.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output folder name.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force query even if antiSMASH server looks busy")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="-g, --genbank       GenBank file (must be annotated)."))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output folder name."))], container="quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Remote_V0_1_0().translate("wdl")

