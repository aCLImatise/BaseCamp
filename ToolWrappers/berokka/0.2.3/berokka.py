from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Berokka_V0_1_0 = CommandToolBuilder(tool="berokka", base_command=["berokka"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug info.")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check dependencies and exit.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Run a small test and exit.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwite of existing.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="[X]    Output folder [].")), ToolInput(tag="in_read_len", input_type=Boolean(optional=True), prefix="--readlen", doc=InputDocumentation(doc="[N]   Approximate max read length [60000].")), ToolInput(tag="in_fuzz", input_type=Boolean(optional=True), prefix="--fuzz", doc=InputDocumentation(doc="[N]      Accept local alignment within --fuzz bp of global [5].")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keepfiles", doc=InputDocumentation(doc="Keep intermediate files.")), ToolInput(tag="in_no_an_no", input_type=Boolean(optional=True), prefix="--noanno", doc=InputDocumentation(doc="Don't annotate FASTA with circular=true.")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="[X]    Contaminants to remove [/usr/local/db/controls.fna]."))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="[X]    Output folder []."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Berokka_V0_1_0().translate("wdl", allow_empty_container=True)

