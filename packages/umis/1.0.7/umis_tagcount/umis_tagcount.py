from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Umis_Tagcount_V0_1_0 = CommandToolBuilder(tool="umis_tagcount", base_command=["umis", "tagcount"], inputs=[ToolInput(tag="in_gene_map", input_type=File(optional=True), prefix="--genemap", doc=InputDocumentation(doc="A TSV file mapping transcript ids to gene ids.\nIf provided expression will be summarised to\ngene level (recommended).")), ToolInput(tag="in_output_evidence_table", input_type=Int(optional=True), prefix="--output_evidence_table", doc=InputDocumentation(doc="A TSV file with CBs and a count. If the counts\nare are the number of reads at a CB, the\ncb_cutoff option can be used to filter out CBs\nto be counted.")), ToolInput(tag="in_cb_cut_off", input_type=Int(optional=True), prefix="--cb_cutoff", doc=InputDocumentation(doc="Number of counts to filter cellular barcodes.\nSet to 'auto' to calculate a cutoff\nautomatically.")), ToolInput(tag="in_no_scale_evidence", input_type=Int(optional=True), prefix="--no_scale_evidence", doc=InputDocumentation(doc="Ouput counts in MatrixMarket format.")), ToolInput(tag="in_parse_tags", input_type=Boolean(optional=True), prefix="--parse_tags", doc=InputDocumentation(doc="Parse BAM tags in stead of read name. In this\nmode the optional tags UM and CR will be used\nfor UMI and cell barcode, respetively.")), ToolInput(tag="in_gene_tags", input_type=Boolean(optional=True), prefix="--gene_tags", doc=InputDocumentation(doc="Use the optional TX and GX tags in the BAM\nfile to read gene mapping information in stead\nof the mapping target nane. Useful if e.g.\nreads have been mapped to genome in stead of\ntranscriptome.")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Tagcount_V0_1_0().translate("wdl", allow_empty_container=True)

