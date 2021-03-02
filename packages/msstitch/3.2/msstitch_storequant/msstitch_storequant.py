from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Int

Msstitch_Storequant_V0_1_0 = CommandToolBuilder(tool="msstitch_storequant", base_command=["msstitch", "storequant"], inputs=[ToolInput(tag="in_dbfile", input_type=File(optional=True), prefix="--dbfile", doc=InputDocumentation(doc="Database lookup file")), ToolInput(tag="in_spectra", input_type=Array(t=String(), optional=True), prefix="--spectra", doc=InputDocumentation(doc="Spectra files in mzML format. Multiple files can be\nspecified, if order is important, e.g. when matching\nthem with quant data, the order will be their input\norder at the command line.")), ToolInput(tag="in_kron_ik", input_type=Array(t=String(), optional=True), prefix="--kronik", doc=InputDocumentation(doc="MS1 quant output files from Kronik in text\nformat.Multiple files can be specified, and matching\norder with spectra files is important.")), ToolInput(tag="in_isobaric", input_type=Array(t=String(), optional=True), prefix="--isobaric", doc=InputDocumentation(doc="Isobaric quant output files from OpenMS in\nconsensusXML format. Multiple files can be specified,\nand matching order with spectra files is important.")), ToolInput(tag="in_rt_to_l", input_type=Int(optional=True), prefix="--rttol", doc=InputDocumentation(doc="Specifies tolerance in seconds for retention time when\nmapping MS1 feature quant info to identifications in\nthe PSM table.")), ToolInput(tag="in_mz_to_l", input_type=Int(optional=True), prefix="--mztol", doc=InputDocumentation(doc="Specifies tolerance in mass-to-charge when mapping MS1\nfeature quant info to identifications in the PSM\ntable.")), ToolInput(tag="in_mz_to_ltype", input_type=String(optional=True), prefix="--mztoltype", doc=InputDocumentation(doc="Type of tolerance in mass-to-charge when mapping MS1\nfeature quant info to identifications in the PSM\ntable. One of ppm, Da.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Storequant_V0_1_0().translate("wdl", allow_empty_container=True)

