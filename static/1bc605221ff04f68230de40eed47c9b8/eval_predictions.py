from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Eval_Predictions_V0_1_0 = CommandToolBuilder(tool="eval_predictions", base_command=["eval_predictions"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="[OPTIONS]")), ToolInput(tag="in_required_list_real", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="(required) List of names of files defining real genes (GFF).")), ToolInput(tag="in_required_list_predicted", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="(required) List of names of files defining predicted genes\n(GFF).  Must correspond in order to <real_fname_list>.")), ToolInput(tag="in_list_bydefault_equal", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="List of names of all features denoting exon regions.  By\ndefault, equal to the single name 'CDS'.")), ToolInput(tag="in_dump_full_coords", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Dump full coords of correct, partially correct, wrong, missed,\nand overlapping exons to a set of files having the specified\nfile name prefix.")), ToolInput(tag="in_also_report_stats", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Also report stats on 'nearly correct' exons, that is, incorrect\nexons whose boundaries are within <nbases> of being correct.\nColumns will be labeled 'NCa' and 'NCp'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eval_Predictions_V0_1_0().translate("wdl", allow_empty_container=True)

