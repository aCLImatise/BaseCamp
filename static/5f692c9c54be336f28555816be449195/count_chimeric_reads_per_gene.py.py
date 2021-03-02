from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Count_Chimeric_Reads_Per_Gene_Py_V0_1_0 = CommandToolBuilder(tool="count_chimeric_reads_per_gene.py", base_command=["count_chimeric_reads_per_gene.py"], inputs=[ToolInput(tag="in_only_first", input_type=Boolean(optional=True), prefix="--only_first", doc=InputDocumentation(doc="Count only the first in fragment. (default: False)")), ToolInput(tag="in_only_second", input_type=Boolean(optional=True), prefix="--only_second", doc=InputDocumentation(doc="Count only the second in fragment. (default: False)")), ToolInput(tag="in_singles", input_type=Boolean(optional=True), prefix="--singles", doc=InputDocumentation(doc="Count the fragments marked as 'single', by default\ncount only the chimeric ones. This option forces -1\notherwise the counts will be doubled. (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print header and antisense/IGR statistics.\n(default: False)")), ToolInput(tag="in_feature", input_type=File(optional=True), prefix="--feature", doc=InputDocumentation(doc="Name of features to count on the GTF file (column 2).\n(default: exon)")), ToolInput(tag="in_identifier", input_type=File(optional=True), prefix="--identifier", doc=InputDocumentation(doc="Name of identifier to print (in column 8 of the GTF\nfile). (default: gene_id)")), ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Minimal overlap between gene and read. (default: 5)\n")), ToolInput(tag="in_genes_gff", input_type=String(), position=0, doc=InputDocumentation(doc="Name of gff file to count the reads per gene.")), ToolInput(tag="in_reads_files", input_type=String(), position=1, doc=InputDocumentation(doc="Reads files, output of map_chimeric_fragments.py"))], outputs=[], container="quay.io/biocontainers/rilseq:0.81--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Chimeric_Reads_Per_Gene_Py_V0_1_0().translate("wdl")

