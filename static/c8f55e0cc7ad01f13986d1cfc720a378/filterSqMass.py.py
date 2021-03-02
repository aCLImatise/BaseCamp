from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filtersqmass_Py_V0_1_0 = CommandToolBuilder(tool="filterSqMass.py", base_command=["filterSqMass.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="An input file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="An output file")), ToolInput(tag="in_chrom_filter", input_type=String(optional=True), prefix="--chrom_filter", doc=InputDocumentation(doc="Filter chromatograms by native id")), ToolInput(tag="in_tsv_filter", input_type=File(optional=True), prefix="--tsv_filter", doc=InputDocumentation(doc="Filter chromatograms by TSV file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="An output file"))], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtersqmass_Py_V0_1_0().translate("wdl")

