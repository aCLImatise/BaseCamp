from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Speclibsearcher_V0_1_0 = CommandToolBuilder(tool="SpecLibSearcher", base_command=["SpecLibSearcher"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                      Input files (valid formats: 'mzML')")), ToolInput(tag="in_lib", input_type=File(optional=True), prefix="-lib", doc=InputDocumentation(doc="*                                      Searchable spectral library (MSP format) (valid formats: 'msp')")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                     Output files. Have to be as many as input files (valid formats: 'idXML')")), ToolInput(tag="in_fragment", input_type=Boolean(optional=True), prefix="-fragment", doc=InputDocumentation(doc=":mass_tolerance <tolerance>              Fragment mass tolerance (default: '10.0')")), ToolInput(tag="in_compare_function", input_type=String(optional=True), prefix="-compare_function", doc=InputDocumentation(doc="Function for similarity comparison (default: 'ZhangSimilarityScore' valid: 'PeakAlignment', 'SpectrumAlignmentScore', 'SpectrumCheapDPCorr', 'SpectrumPrecursorComparator', 'SteinScottImproveScore', 'ZhangSimilarityScore')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Speclibsearcher_V0_1_0().translate("wdl")

