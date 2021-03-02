from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maker_Map_Ids_V0_1_0 = CommandToolBuilder(tool="maker_map_ids", base_command=["maker_map_ids"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="The prefix to use for all IDs (default = 'MAKER_')")), ToolInput(tag="in_suffix", input_type=Boolean(optional=True), prefix="--suffix", doc=InputDocumentation(doc="A suffix to use for all transcript IDs (default = '-R').\nSpecifying --suffix will also turn on --iterate.")), ToolInput(tag="in_initial", input_type=Boolean(optional=True), prefix="--initial", doc=InputDocumentation(doc="The initial value to start with for ID count. If --initial\nis supplied more than once than the first value will be used\nfor genes and the second for transcripts (default = 1)")), ToolInput(tag="in_ab_rv_gene", input_type=Boolean(optional=True), prefix="--abrv_gene", doc=InputDocumentation(doc="Optional abreviation added to IDs for genes (i.e. = 'G')")), ToolInput(tag="in_ab_rv_tran", input_type=Boolean(optional=True), prefix="--abrv_tran", doc=InputDocumentation(doc="Optioanl abreviation added to IDs for transcripts (i.e. = 'T')")), ToolInput(tag="in_iterate", input_type=Boolean(optional=True), prefix="--iterate", doc=InputDocumentation(doc="Transcript iteration to add to IDs. Value can be '0', '1',\nor 'A', i.e. mRNA-0 or mRNA-1 or mRNA-A (default = 'A')")), ToolInput(tag="in_justify", input_type=Boolean(optional=True), prefix="--justify", doc=InputDocumentation(doc="The unique integer portion of the ID will be right justified\nwith '0's to this length (default = 8)")), ToolInput(tag="in_sort_order", input_type=Boolean(optional=True), prefix="--sort_order", doc=InputDocumentation(doc="A tab delimited file containing two columns: contig_id\nand sort_order.  Genes and transcripts will be named\nin consecutive order along the contigs, and the\ncontigs will be sorted in the order specified by the\nfile.  If sort_order is not given and there are\n##sequence-region directives at the top of the gff\nfile then naming will be ordered by decreasing contig\nlength."))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker_Map_Ids_V0_1_0().translate("wdl")

