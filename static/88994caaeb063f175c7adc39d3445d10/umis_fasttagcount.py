from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean, String

Umis_Fasttagcount_V0_1_0 = CommandToolBuilder(tool="umis_fasttagcount", base_command=["umis", "fasttagcount"], inputs=[ToolInput(tag="in_gene_map", input_type=File(optional=True), prefix="--genemap", doc=InputDocumentation(doc="A TSV file mapping transcript ids to gene ids. If\nprovided expression will be summarised to gene level\n(recommended).")), ToolInput(tag="in_cb_histogram", input_type=Float(optional=True), prefix="--cb_histogram", doc=InputDocumentation(doc="A TSV file with CBs and a count. If the counts are are\nthe number of reads at a CB, the cb_cutoff option can\nbe used to filter out CBs to be counted.")), ToolInput(tag="in_cb_cut_off", input_type=Int(optional=True), prefix="--cb_cutoff", doc=InputDocumentation(doc="Number of counts to filter cellular barcodes. Set to\n'auto' to calculate a cutoff automatically.")), ToolInput(tag="in_parse_tags", input_type=Int(optional=True), prefix="--parse_tags", doc=InputDocumentation(doc="Parse BAM tags in stead of read name. In this mode the\noptional tags UM and CR will be used for UMI and cell\nbarcode, respetively.")), ToolInput(tag="in_gene_tags", input_type=Boolean(optional=True), prefix="--gene_tags", doc=InputDocumentation(doc="Use the optional TX and GX tags in the BAM file to read\ngene mapping information in stead of the mapping target\nnane. Useful if e.g. reads have been mapped to genome\nin stead of transcriptome.")), ToolInput(tag="in_umi_matrix", input_type=File(optional=True), prefix="--umi_matrix", doc=InputDocumentation(doc="Save a sparse matrix of counts without UMI deduping to\nthis file.")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Fasttagcount_V0_1_0().translate("wdl", allow_empty_container=True)

