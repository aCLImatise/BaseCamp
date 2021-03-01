from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Phosphoscoring_V0_1_0 = CommandToolBuilder(tool="PhosphoScoring", base_command=["PhosphoScoring"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                       Input file with MS/MS spectra (valid formats: 'mzML')")), ToolInput(tag="in_id", input_type=File(optional=True), prefix="-id", doc=InputDocumentation(doc="*                       Identification input file which contains a search against a concatenated sequence database (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                      Identification output annotated with phosphorylation scores")), ToolInput(tag="in_fragment_mass_tolerance", input_type=Int(optional=True), prefix="-fragment_mass_tolerance", doc=InputDocumentation(doc="Fragment mass tolerance for spectrum comparisons (default: '0.05' min: '0.0')")), ToolInput(tag="in_fragment_mass_unit", input_type=String(optional=True), prefix="-fragment_mass_unit", doc=InputDocumentation(doc="Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phosphoscoring_V0_1_0().translate("wdl", allow_empty_container=True)

