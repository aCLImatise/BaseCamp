from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, Int

Tobias_Subsamplebam_V0_1_0 = CommandToolBuilder(tool="TOBIAS_SubsampleBam", base_command=["TOBIAS", "SubsampleBam"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="Path to .bam-file")), ToolInput(tag="in_no_rand", input_type=Boolean(optional=True), prefix="--no_rand", doc=InputDocumentation(doc="Number of randomizations (per step) (default: 3)")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="--start", doc=InputDocumentation(doc="Start of percent subsample (default: 0)")), ToolInput(tag="in_end", input_type=Boolean(optional=True), prefix="--end", doc=InputDocumentation(doc="End of percent subsample (default: 100)")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="--step", doc=InputDocumentation(doc="Step between --start and --end (default: 10)")), ToolInput(tag="in_cores", input_type=Boolean(optional=True), prefix="--cores", doc=InputDocumentation(doc="Cores for multiprocessing (default: 1)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: subsamplebam_output)")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for output files (default: prefix of .bam)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force creation of subsampled .bam-files (default: only create if not existing)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4:\ndebug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: subsamplebam_output)"))], container="quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Subsamplebam_V0_1_0().translate("wdl")

