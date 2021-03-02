from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ldhggene_V0_1_0 = CommandToolBuilder(tool="ldHgGene", base_command=["ldHgGene"], inputs=[ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="-bin", doc=InputDocumentation(doc="Add bin column (now the default)")), ToolInput(tag="in_no_bin", input_type=Boolean(optional=True), prefix="-nobin", doc=InputDocumentation(doc="don't add binning (you probably don't want this)")), ToolInput(tag="in_exon", input_type=String(optional=True), prefix="-exon", doc=InputDocumentation(doc="Sets type field for exons to specific value")), ToolInput(tag="in_old_table", input_type=Boolean(optional=True), prefix="-oldTable", doc=InputDocumentation(doc="Don't overwrite what's already in table")), ToolInput(tag="in_noncoding", input_type=Boolean(optional=True), prefix="-noncoding", doc=InputDocumentation(doc="Forces whole prediction to be UTR")), ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="-gtf", doc=InputDocumentation(doc="input is GTF, stop codon is not in CDS")), ToolInput(tag="in_pred_tab", input_type=Boolean(optional=True), prefix="-predTab", doc=InputDocumentation(doc="input is already in genePredTab format")), ToolInput(tag="in_require_cds", input_type=Boolean(optional=True), prefix="-requireCDS", doc=InputDocumentation(doc="discard genes that don't have CDS annotation")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="write output, in genePred format, instead of loading\ntable. Database is ignored.")), ToolInput(tag="in_gene_pred_ext", input_type=String(optional=True), prefix="-genePredExt", doc=InputDocumentation(doc="a extended genePred, including frame\ninformation and gene name")), ToolInput(tag="in_implied_stop_after_cds", input_type=Boolean(optional=True), prefix="-impliedStopAfterCds", doc=InputDocumentation(doc="- implied stop codon in GFF/GTF after CDS")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ldhggene_V0_1_0().translate("wdl", allow_empty_container=True)

