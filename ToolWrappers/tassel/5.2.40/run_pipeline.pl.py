from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Run_Pipeline_Pl_V0_1_0 = CommandToolBuilder(tool="run_pipeline.pl", base_command=["run_pipeline.pl"], inputs=[ToolInput(tag="in_format", input_type=File(optional=True), prefix="-format", doc=InputDocumentation(doc=": Import file format [SqrMatrix, Sequence, Unknown, Fasta, Hapmap, HapmapLIX, Plink, Phenotype, ProjectionAlignment, ProjectPCsandRunModelSelection, Phylip_Seq, Phylip_Inter, Table, Serial, HapmapDiploid, Text, VCF, HDF5, TOPM, HDF5Schema, Filter, NumericGenotype, TaxaList, PositionList, SqrMatrixRaw, SqrMatrixBin, GOBII, Depth, ReferenceProbability, Report, PlinkPhenotype, SqrMatrixDARwinDIS, Avro] (Default: Make Best Guess)")), ToolInput(tag="in_sort_positions", input_type=String(optional=True), prefix="-sortPositions", doc=InputDocumentation(doc=": Whether to sort genotype positions if that's possible. (Default: false)")), ToolInput(tag="in_file_load_plugin", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Pipeline_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

