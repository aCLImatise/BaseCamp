from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, Int

Phastaf_V0_1_0 = CommandToolBuilder(tool="phastaf", base_command=["phastaf"], inputs=[ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check dependencies are installed")), ToolInput(tag="in_force", input_type=Directory(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwite of existing output folder (default: OFF)")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keepfiles", doc=InputDocumentation(doc="Keep intermediate files (default: OFF)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output folder (default: '')")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Diamond database of phage proteins (default: '/usr/local/db/phastaf.dmnd')")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use (0=ALL) (default: 1)")), ToolInput(tag="in_i_gff", input_type=Int(optional=True), prefix="--igff", doc=InputDocumentation(doc="Intergenic fuzz factor (default: 2000)")), ToolInput(tag="in_min_genes", input_type=Int(optional=True), prefix="--mingenes", doc=InputDocumentation(doc="Minimum genes in cluster (default: 5)"))], outputs=[ToolOutput(tag="out_force", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Force overwite of existing output folder (default: OFF)")), ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output folder (default: '')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phastaf_V0_1_0().translate("wdl", allow_empty_container=True)

