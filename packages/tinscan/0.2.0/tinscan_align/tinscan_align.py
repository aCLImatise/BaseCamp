from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String, Int

Tinscan_Align_V0_1_0 = CommandToolBuilder(tool="tinscan_align", base_command=["tinscan-align"], inputs=[ToolInput(tag="in_a_dir", input_type=Directory(optional=True), prefix="--adir", doc=InputDocumentation(doc="Name of directory containing sequences from A genome.")), ToolInput(tag="in_b_dir", input_type=Directory(optional=True), prefix="--bdir", doc=InputDocumentation(doc="Name of directory containing sequences from B genome.")), ToolInput(tag="in_pairs", input_type=File(optional=True), prefix="--pairs", doc=InputDocumentation(doc="Optional: Tab-delimited 2-col file specifying\ntarget:query sequence pairs to be aligned")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Write output files to this directory. (Default: cwd)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Name of alignment result file.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="If set report LASTZ progress.")), ToolInput(tag="in_lz_path", input_type=File(optional=True), prefix="--lzpath", doc=InputDocumentation(doc="Custom path to LASTZ executable if not in $PATH.")), ToolInput(tag="in_mini_dt", input_type=String(optional=True), prefix="--minIdt", doc=InputDocumentation(doc="Minimum alignment identity to report.")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minLen", doc=InputDocumentation(doc="Minimum alignment length to report.")), ToolInput(tag="in_hsp_thresh", input_type=Int(optional=True), prefix="--hspthresh", doc=InputDocumentation(doc="LASTZ min HSP threshold. Increase for stricter\nmatches.\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Write output files to this directory. (Default: cwd)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tinscan_Align_V0_1_0().translate("wdl", allow_empty_container=True)

