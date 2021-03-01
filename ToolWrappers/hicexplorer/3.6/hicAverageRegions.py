from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hicaverageregions_V0_1_0 = CommandToolBuilder(tool="hicAverageRegions", base_command=["hicAverageRegions"], inputs=[ToolInput(tag="in_range", input_type=String(optional=True), prefix="--range", doc=InputDocumentation(doc="RANGE, -ra RANGE RANGE\nRange of region up- and downstream of each region to\ninclude in genomic units.")), ToolInput(tag="in_range_in_bins", input_type=String(optional=True), prefix="--rangeInBins", doc=InputDocumentation(doc="RANGEINBINS, -rib RANGEINBINS RANGEINBINS\nRange of region up- and downstream of each region to\ninclude in bin units.")), ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The matrix to use for the average of TAD regions.")), ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="BED file which stores a list of regions that are\nsummed and averaged")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the average regions TADs matrix.")), ToolInput(tag="in_coordinates_tobin_mapping", input_type=String(optional=True), prefix="--coordinatesToBinMapping", doc=InputDocumentation(doc="If the region contains start and end coordinates,\ndefine if the start, center (start + (end-start) / 2)\nor end bin should be used as start for range.This\nparameter is only important to set if the given start\nand end coordinates are not in the same bin (Default:\nstart)."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the average regions TADs matrix."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicaverageregions_V0_1_0().translate("wdl")

