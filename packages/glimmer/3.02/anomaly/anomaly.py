from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Anomaly_V0_1_0 = CommandToolBuilder(tool="anomaly", base_command=["anomaly"], inputs=[ToolInput(tag="in_start_codonssample_format", input_type=String(optional=True), prefix="-A", doc=InputDocumentation(doc="Use comma-separated list of codons as start codons\nSample format:  -A atg,gtg\nDefault start codons are atg,gtg,ttg")), ToolInput(tag="in_omit_check_is", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Omit the check that the first codon is a start codon.")), ToolInput(tag="in_check_codon_coordinate", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Check whether the codon preceding the start coordinate position\nis a stop codon.  This is useful if the coordinates represent\nthe entire region between stop codons.")), ToolInput(tag="in_stop_codonssample_format", input_type=String(optional=True), prefix="-Z", doc=InputDocumentation(doc="Use comma-separated list of codons as stop codons\nSample format:  -Z tag,tga,taa\n")), ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coord_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anomaly_V0_1_0().translate("wdl", allow_empty_container=True)

