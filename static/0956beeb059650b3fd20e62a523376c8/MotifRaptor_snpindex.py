from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Motifraptor_Snpindex_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_snpindex", base_command=["MotifRaptor", "snpindex"], inputs=[ToolInput(tag="in_vcf_filename", input_type=File(optional=True), prefix="--vcf_filename", doc=InputDocumentation(doc="input - VCF file for SNPs, first five columns need to\nbe CHR,POS,ID,REF,ALT")), ToolInput(tag="in_indexed_genome_db", input_type=String(optional=True), prefix="--indexed_genome_db", doc=InputDocumentation(doc="output - indexed genome_database_folder")), ToolInput(tag="in_mk_sary", input_type=File(optional=True), prefix="--mksary", doc=InputDocumentation(doc="Mksary program path")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Snpindex_V0_1_0().translate("wdl", allow_empty_container=True)

