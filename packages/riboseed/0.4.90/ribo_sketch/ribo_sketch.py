from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File

Ribo_Sketch_V0_1_0 = CommandToolBuilder(tool="ribo_sketch", base_command=["ribo", "sketch"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory; default: None")), ToolInput(tag="in_assembly_ext", input_type=String(optional=True), prefix="--assembly_ext", doc=InputDocumentation(doc="extension of assemblies, usually fasta")), ToolInput(tag="in_ref_ext", input_type=String(optional=True), prefix="--ref_ext", doc=InputDocumentation(doc="extension of reference, usually gb")), ToolInput(tag="in_names", input_type=String(optional=True), prefix="--names", doc=InputDocumentation(doc="name the resulting plot and output dirs; comma-\nseparate")), ToolInput(tag="in_replot", input_type=Boolean(optional=True), prefix="--replot", doc=InputDocumentation(doc="replot, using a previous run of analyses")), ToolInput(tag="in_mauve_jar", input_type=File(optional=True), prefix="--mauve_jar", doc=InputDocumentation(doc="path to Mauve.jar; default:\n~/mauve_snapshot_2015-02-13/Mauve.jar")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: None")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Sketch_V0_1_0().translate("wdl", allow_empty_container=True)

