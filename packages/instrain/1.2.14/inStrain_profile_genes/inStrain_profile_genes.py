from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Instrain_Profile_Genes_V0_1_0 = CommandToolBuilder(tool="inStrain_profile_genes", base_command=["inStrain", "profile_genes"], inputs=[ToolInput(tag="in_gene_file", input_type=File(optional=True), prefix="--gene_file", doc=InputDocumentation(doc="Path to prodigal .fna genes file. If file ends in .gb\nor .gbk, will treat as a genbank file (EXPERIMENTAL;\nthe name of the gene must be in the gene qualifier)\n(default: None)")), ToolInput(tag="in_is", input_type=String(optional=True), prefix="--IS", doc=InputDocumentation(doc="an inStrain profile object (default: None)")), ToolInput(tag="in_store_everything", input_type=Boolean(optional=True), prefix="--store_everything", doc=InputDocumentation(doc="Store gene sequences in the IS object (default: False)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make extra debugging output (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Profile_Genes_V0_1_0().translate("wdl", allow_empty_container=True)

