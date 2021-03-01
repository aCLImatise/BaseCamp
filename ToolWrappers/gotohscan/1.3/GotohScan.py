from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Gotohscan_V0_1_0 = CommandToolBuilder(tool="GotohScan", base_command=["GotohScan"], inputs=[ToolInput(tag="in_dbase", input_type=File(optional=True), prefix="--dbase", doc=InputDocumentation(doc="Input database FILE in FASTA format.")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="Input query FILE in FASTA format.")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Input configuration FILE.")), ToolInput(tag="in_split", input_type=Int(optional=True), prefix="--split", doc=InputDocumentation(doc="Database is splitted into NUMBER nt large subsequences. Default: 10000")), ToolInput(tag="in_set_evalue_double", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Set Evalue (double!). NUMBER should be < 10. Default: 1e-3")), ToolInput(tag="in_set_percent_identity", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Set percent identity of aligned sequences. NUMBER should be in [0.0,100.0]")), ToolInput(tag="in_print_score_distribution", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Print score distribution data for each query to a file. Default: unset\nProduces an xmgrace (.agr) file!")), ToolInput(tag="in_give_output_format", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Give output format. Default: 0\n0 - Blast tabular output\n1 - Blast tabular output + aligned sequences\n2 - FASTA format. NOTE: Hit sequence only, without gaps !\n3 - MAF format. NOTE: Header truncated to 30 characters!\n4 - BED + aligned sequences\n5 - GFF + aligned sequences")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="|1        Print Warnings and Notes. Default: 0")), ToolInput(tag="in_jana_at_bio_in_fdot_uni_leipzig_dot_de", input_type=String(), position=0, doc=InputDocumentation(doc="Date:    March 5, 2009"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotohscan_V0_1_0().translate("wdl", allow_empty_container=True)

