from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Mzmlsplitter_V0_1_0 = CommandToolBuilder(tool="MzMLSplitter", base_command=["MzMLSplitter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input file (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Prefix for output files ('_part1of2.mzML' etc. will be appended; default: same as 'in' without the file extension)")), ToolInput(tag="in_parts", input_type=Int(optional=True), prefix="-parts", doc=InputDocumentation(doc="Number of parts to split into (takes precedence over 'size' if set) (default: '1' min: '1')")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="-size", doc=InputDocumentation(doc="Approximate upper limit for resulting file sizes (in 'unit') (default: '0' min: '0')")), ToolInput(tag="in_unit", input_type=Int(optional=True), prefix="-unit", doc=InputDocumentation(doc="Unit for 'size' (base 1024) (default: 'MB' valid: 'KB', 'MB', 'GB')")), ToolInput(tag="in_no_chrom", input_type=Boolean(optional=True), prefix="-no_chrom", doc=InputDocumentation(doc="Remove chromatograms, keep only spectra.")), ToolInput(tag="in_no_spec", input_type=Boolean(optional=True), prefix="-no_spec", doc=InputDocumentation(doc="Remove spectra, keep only chromatograms.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Prefix for output files ('_part1of2.mzML' etc. will be appended; default: same as 'in' without the file extension)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mzmlsplitter_V0_1_0().translate("wdl", allow_empty_container=True)

